require 'spec_helper'

describe "Sections" do

  before do
    @section = Section.first
    visit section_path(name: @section.name) # FactoryGirl.create(:section)
    # FactoryGirl.create(:article)
  end
  subject { page }

  it "should display all the articles in the named section" do
    Article.find_all_by_section_id(@section.id).each do |article|
      page.should have_selector("h3", text: article.title)
    end
  end

  it "should have a sensible title" do
    page.should have_selector("title", text: @section.name)
  end

end
