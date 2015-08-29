class Comment < ActiveRecord::Base
  belongs_to :post

  # def post_custom
  #   self.post.title
  # end
end
