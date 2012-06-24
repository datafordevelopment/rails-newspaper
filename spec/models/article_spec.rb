require 'spec_helper'

describe Article do

  fixtures :articles
  subject { articles(:first_article) }

  describe "instance methods" do
    [:content, :title, :writer_id, :section_id].each do |m|
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

