require 'spec_helper'

describe Section do

  subject { FactoryGirl.create(:section) }

  it { should respond_to :name }
  it { should respond_to :writer }

end
