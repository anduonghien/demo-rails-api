class Post < ActiveRecord::Base
  
  def method_custom_in_model
    "#{self.title} customed in model"
  end
end
