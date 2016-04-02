class FeaturesController < ApplicationController
	
  def features_ids
      render json: Feature.active, scope: :ids, root: false
  end
  
  def features_detailed
      render json: Feature.active, scope: :detailed, root: false
  end  
  
  def feature_by_id
    @feature = Feature.find(params[:id])
    render json: Feature.active.where('id = ?', @feature.id), scope: :name, root: false
  end
end
