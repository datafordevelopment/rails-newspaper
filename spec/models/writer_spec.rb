require 'spec_helper'

describe Writer do

  subject { Writer.first } # FactoryGirl.create(:writer)

  describe "instance methods" do

    [:name, :email, :section, :articles].each do |m|
      it { should respond_to m }
    end

    specify "#section method should return a section" do
      subject.section.should be_a_kind_of Section
    end

    specify "#articles method should return an array of articles" do
      subject.articles.should be_a_kind_of Array
      subject.articles.each {|a| a.should be_a_kind_of Article}
    end

  end

  describe "validations" do

    context "when all attributes are present and valid" do
      it { should be_valid }
    end

    attributes = [:name, :email]
    
    attributes.each do |a|
      context "when attribute #{a} is blank" do
        before { subject.send("#{a}=".to_sym, " ") }
        it { should_not be_valid }
      end

      context "when attribute #{a} is the same as another's #{a}" do
        before do
          @copycat = Writer.new(a => subject.send(a))
          (attributes - [a]).each do |z|
            @copycat.send((z.to_s + "=").to_sym, "flimbatoo")
          end
        end
        specify { @copycat.should_not be_valid }
      end
    end

  end

end
