require 'spec_helper'

describe "Articles" do

  subject { "/articles/1" }
  let(:first_article) { FactoryGirl.create(:article) }
  before { visit subject }

  params = { id: "1" }

  it "should have some content" do
    page.should have_selector("div", :class => "article", text: first_article.content)
  end

  it "should have the name of the article" do
    page.should have_selector("h1", text: first_article.title)
  end

  it "should have a sensible title" do
    page.should have_selector("title", text: first_article.title)
  end

end
