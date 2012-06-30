require 'spec_helper'

describe Article do

  subject { Article.first } # FactoryGirl.create(:article)

  describe "instance methods" do
    [:content, :title, :section, :writer, :snippet].each do |m|
      it { should respond_to m }
    end

    [:section, :writer].each do |a|
      describe "##{a.to_s} method" do
        specify { subject.send(a).should be_a_kind_of(eval(a.to_s.capitalize)) }
      end
    end

    describe "#snippet method" do

      it "should be a string" do
        subject.snippet.should be_a_kind_of String
      end

      it "should end with '...'" do
        subject.snippet.should be_end_with "..."
      end

      it "should return the first part of the article's content" do
        subject.content.should be_start_with \
          (subject.snippet[0, subject.snippet.length - 3])
      end

      it "should be of the right length" do
        subject.snippet.length.should <= 80
      end

    end

  end

  describe "validations" do
    
    context "when all attributes are present and valid" do
      it { should be_valid }
    end

    [:content, :title].each do |a|
      context "when attribute #{a} is blank" do
        before { subject.send("#{a}=".to_sym, " ") }
        it { should_not be_valid }
      end
    end

    context "when the title is the same as another's" do
      it "should not be valid" do
        copycat = Article.new(title: subject.title)
        copycat.should_not be_valid
      end
    end

  end

end

