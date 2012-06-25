require 'spec_helper'

describe "Sections" do

  before do
    visit section_path(@section = FactoryGirl.create(:section))
    FactoryGirl.create(:article)
  end
  subject { page }

  it "should display all the articles in the named section" do
    Article.find_all_by_section(@section).each do |article|
      subject.should have_selector("h2", text: article.title)
    end
  end

end
