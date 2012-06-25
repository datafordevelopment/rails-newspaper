class Writer < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :articles
  has_one :section
end
