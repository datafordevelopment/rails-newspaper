require 'spec_helper'

describe "Articles" do

  describe "/articles/1" do
    
    let(:first_article) { Article.first } # FactoryGirl.create(:article)
    before { visit articles_path(Article.first) }

    params = { id: "1" }

    it "should have the article's content" do
      page.should have_selector("div", :class => "article-content",
                                text: first_article.content)
    end

    it "should have the name of the article" do
      page.should have_selector("h1", text: first_article.title)
    end

    it "should display the writer of the article" do
      page.should have_selector("h3", text: first_article.writer.name)
    end

    it "should have a sensible title" do
      page.should have_selector("title", text: first_article.title)
    end

  end

  describe "/articles" do

    before { visit "/articles" }

    it "should display all the articles" do
      Article.all.each do |a|
        page.should have_selector(".article-title", text: a.title)
      end
    end

  end

end
