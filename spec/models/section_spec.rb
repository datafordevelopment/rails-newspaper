require 'spec_helper'

describe Section do

  fixtures :sections
  subject { sections(:first_section) }

  it { should respond_to :name }
  it { should respond_to :writer_id }

end
