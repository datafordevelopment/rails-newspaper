class Section < ActiveRecord::Base
  attr_accessible :name
  belongs_to :writer
end
