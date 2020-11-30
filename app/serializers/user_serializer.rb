class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :pin, :total_points
end
