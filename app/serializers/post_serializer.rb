class PostSerializer < ActiveModel::Serializer
  # attributes :id, :title, :new_function, :custom_key, :method_custom_in_model
  attributes :id, :title, :num_comments, :comments

  # has_many :comments

  def num_comments
    object.comments.count(:id)
  end

  # custom key for version < 0.10.0 
  def custom_key
    object.title
  end

  # From 0.10.0 version, custom key will be
  # attribute title:, key: :custom_key

  # add value
  def new_function
    "#{object.title} customed"
  end
end
