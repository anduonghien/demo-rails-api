class Post < ActiveRecord::Base
  has_many :comments

  def method_custom_in_model
    "#{self.title} customed in model"
  end
end
