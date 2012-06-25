require 'spec_helper'

describe Article do

  subject { FactoryGirl.create(:article) }

  describe "instance methods" do
    [:content, :title, :section, :writer].each do |m|
      it { should respond_to m }
    end
  end

  it { should be_valid }

  [:content, :title].each do |a|
    context "attribute #{a} is blank" do
      before { subject.send("#{a}=".to_sym, " ") }
      it { should_not be_valid }
    end
  end

end

