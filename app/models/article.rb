class Article < ActiveRecord::Base
  attr_accessible :category, :content, :title, :writer
end
