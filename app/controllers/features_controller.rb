class FeaturesController < ApplicationController
	
  def features_ids
    if stale?(Features.active.first)
      render json: Features.active, scope: :ids, root: false
    end
  end
  
  def features_detailed
    if stale?(Features.active.first)
      render json: Features.active, scope: :detailed, root: false
    end
  end  
  
  def feature_by_id
    @restaurant = Features.find(params[:id])
    render json: Features.active.where('id = ?', @restaurant.id), scope: :name, root: false
  end
end
