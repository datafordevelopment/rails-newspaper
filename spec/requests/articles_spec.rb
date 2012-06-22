require 'spec_helper'

describe "Articles" do

  subject { "/articles/1" }
  let(:first_article) { Article.first }

  it "should have some content" do
    visit subject
    page.should have_selector("div", :class => "article", text: first_article.content)
  end

  it "should have the name of the article" do
    visit subject
    page.should have_selector("h1", text: first_article.title)
  end

  it "should have a sensible title" do
    visit subject
    page.should have_selector("title", text: first_article.title)
  end

end
