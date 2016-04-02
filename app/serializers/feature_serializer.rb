class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :title

  def filter(keys)
    if scope == :ids
      keys = [:id]
    elsif scope == :detailed
      keys = [:id, :title]
    elsif scope == :name
      keys = [:title]
    end
  end

  def id
    object.spid
  end
end
