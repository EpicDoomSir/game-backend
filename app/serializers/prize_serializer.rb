class PrizeSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :description, :image_url
end
