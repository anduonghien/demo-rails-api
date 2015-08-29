class CommentSerializer < ActiveModel::Serializer
  # For version < 0.10.0
  attributes :id, :content, :post

  # has_one :post
  ### From 0.10.0 version
  # attributes :id, :content
  # belongs_to :post
end
