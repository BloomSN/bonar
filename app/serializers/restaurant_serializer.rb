class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :telephone, :price, :latitude, :longitude, :opening, :menu
  has_many :features

  def filter(keys)
    if scope == :basic
      keys = [:id, :latitude, :longitude, :price]
    else if scope == :list
      keys = [:id, :name, :address]
    else if scope == :map
      keys = [:id, :name, :address, :latitude, :longitude]
    else if scope == :ids
      keys = [:id]
    else
      keys - [:latitude, :longitude] + [:coordinates]
    end
  end

  def telephone
    object.telephones
  end

  def coordinates
    [object.latitude, object.longitude]
  end
end
