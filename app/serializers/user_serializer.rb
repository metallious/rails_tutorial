class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :posts, :comments
end
