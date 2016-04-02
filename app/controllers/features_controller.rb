class FeaturesController < ApplicationController
  def index
    @features = Feature.order(:title)
  end
  
	
  def feature_by_id
    if stale?(Features.active.first)
      render json: Features.active, scope: :ids, root: false
    end
  end
  
  def features_detailed
    if stale?(Features.active.first)
      render json: Features.active, scope: :detailed, root: false
    end
  end  
  
  def features_ids
    @restaurant = Features.find(params[:id])
    render json: Features.active.where('id = ?', @restaurant.id), scope: :name, root: false
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant])
    render layout: false
  end
  alias_method :menu, :load_restaurant
  alias_method :content, :load_restaurant

  def search
    ids = Restaurant.with_features(params[:features]).with_text(params[:search]).pluck(:id)
    render json: ids, root: false
  end
end
