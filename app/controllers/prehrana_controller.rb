class PrehranaController < ApplicationController
  def index
    @features = Feature.order(:title)
  end
  
  def all
    if stale?(Restaurant.active.first)
      render json: Restaurant.active, root: false
    end
  end
	
  def list_restaurants
    if stale?(Restaurant.active.first)
      render json: Restaurant.active, scope: :list, root: false
    end
  end
  
  def map_restaurants
    if stale?(Restaurant.active.first)
      render json: Restaurant.active, scope: :map, root: false
    end
  end
  
  def ids
    if stale?(Restaurant.active.first)
      render json: Restaurant.active, scope: :ids, root: false
    end
  end

  def all_restaurants
    if stale?(Restaurant.active.first)
      render json: Restaurant.active, scope: :basic, root: false
    end
  end

  def find_by_id
    @restaurant = Restaurant.find(params[:id])
    render json: Restaurant.active, root: false
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
