require 'spec_helper'

describe "Sections" do

  fixtures :articles, :sections
  before { visit section_path(Section.first) }
  subject { page }

  it "should display all the articles in the named section" do
    Article.find_all_by_section_id(Section.first.id).each do |article|
      subject.should have_selector("h2", text: article.title)
    end
  end

end
