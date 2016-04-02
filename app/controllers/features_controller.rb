class FeaturesController < ApplicationController
	
  def ids
  	if stale?(Feature.first)
      render json: Feature, scope: :ids, root: false
    end
  end
  
  def features_detailed
  	if stale?(Feature.first)
      render json: Feature, scope: :detailed, root: false
    end
  end  
  
  def find_by_id
    @feature = Feature.find(params[:id])
    render json: Feature.active.where('id = ?', @feature.id), scope: :name, root: false
  end
end
