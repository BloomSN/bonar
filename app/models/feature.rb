class Feature < ActiveRecord::Base
  def restaurants
    Restaurant.where('features_array @> ARRAY[?]', id)
  end
  
  def features
    Feature.where(id: features_array).order(:title)
  end

  def html_title
    title.parameterize
  end
end
