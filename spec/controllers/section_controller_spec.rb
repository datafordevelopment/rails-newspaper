require 'spec_helper'

describe SectionController do

  fixtures :sections, :articles
  
  describe "'show' action" do

    pending "I'm not yet sure how to write a controller spec."

    it "should set @articles to an array of articles" do
      SectionController.new.show
      @articles.should be_a_kind_of(Array)
    end

    it "should show all the articles in the requested section" do
      SectionController.new.show
      @articles.each { |a| a.section_id.should == Section.first.id }
    end

  end

end
