require 'spec_helper'

describe "Articles" do

  fixtures :articles, :writers
  subject { "/articles/1" }
  before { visit subject }
  let(:first_article) { articles(:first_article) }

  params = { id: 1 }

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
