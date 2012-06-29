require 'spec_helper'

describe "Sections" do

  before do
    visit section_path(@section = Section.first) # FactoryGirl.create(:section)
    # FactoryGirl.create(:article)
  end
  subject { page }

  it "should display all the articles in the named section" do
    Article.find_all_by_section(@section).each do |article|
      page.should have_selector("h2", text: article.title)
    end
  end

  it "should have a sensible title" do
    page.should have_selector("title", text: @section.name)
  end

end
