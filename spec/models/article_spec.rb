require 'spec_helper'

describe Article do

  subject { FactoryGirl.create(:article) }

  describe "instance methods" do
    [:content, :title, :section, :writer].each do |m|
      it { should respond_to m }
    end

    [:section, :writer].each do |a|
      describe "#{a.to_s} method" do
        specify { subject.send(a).should be_a_kind_of(eval(a.to_s.capitalize)) }
      end
    end
  end

  describe "validations" do
    
    context "when all attributes are present and valid" do
      it { should be_valid }
    end

    [:content, :title].each do |a|
      context "attribute #{a} is blank" do
        before { subject.send("#{a}=".to_sym, " ") }
        it { should_not be_valid }
      end
    end

  end

end

