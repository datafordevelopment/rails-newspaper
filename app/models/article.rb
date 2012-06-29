class Article < ActiveRecord::Base

  attr_accessible :content, :title, :section, :writer
  belongs_to :section
  belongs_to :writer

  validates :content, presence: true
  validates :title, presence: true, uniqueness: true

  def snippet
    content[0, 77] + "..."
  end

end
