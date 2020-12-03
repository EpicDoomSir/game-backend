class PrizeSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :description
end
