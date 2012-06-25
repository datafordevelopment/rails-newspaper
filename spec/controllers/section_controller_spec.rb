require 'spec_helper'

describe SectionController do

  FactoryGirl.create(:article)
  
  describe "'show' action" do

    it "should set @articles to an array of articles" do
      pending "I'm not yet sure how to write a controller spec."
      SectionController.new.show
      @articles.should be_a_kind_of(Array)
    end

    it "should show all the articles in the requested section" do
      pending "I'm not yet sure how to write a controller spec."
      SectionController.new.show
      @articles.each { |a| a.section_id.should == Section.first.id }
    end

  end

end
