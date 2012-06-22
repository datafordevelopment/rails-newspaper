require 'spec_helper'

describe SectionController do

  describe "'show' action" do

    it "should set @articles to an array of articles" do
      SectionController.new.show
      @articles.should be_a_kind_of_array
    end

    it "should show all the articles in the requested section" do
      SectionController.new.show
      @articles.each { |a| a.category.should == the_section }
    end

  end

end
