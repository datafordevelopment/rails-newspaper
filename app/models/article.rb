class Article < ActiveRecord::Base
  attr_accessible :content, :title
  belongs_to :section
  belongs_to :writer

  validates :content, presence: true
  validates :title, presence: true
end
