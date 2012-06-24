class Article < ActiveRecord::Base
  attr_accessible :section_id, :content, :title, :writer_id
end
