class FeaturesController < ApplicationController
	
  def features_ids
    if stale?(Feature.active.first)
      render json: Feature.active, scope: :ids, root: false
    end
  end
  
  def features_detailed
    if stale?(Feature.active.first)
      render json: Feature.active, scope: :detailed, root: false
    end
  end  
  
  def feature_by_id
    @feature = Feature.find(params[:id])
    render json: Feature.active.where('id = ?', @feature.id), scope: :name, root: false
  end
end
