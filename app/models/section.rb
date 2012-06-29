class Section < ActiveRecord::Base
  attr_accessible :name
  belongs_to :writer
  validates :name, presence: true, uniqueness: true
end
