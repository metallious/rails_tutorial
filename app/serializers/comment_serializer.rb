class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :post_id
  has_one :user_id
end
