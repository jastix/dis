require File.dirname(__FILE__) + '/../spec_helper'

describe Area do
  it "should be valid" do
    Area.new.should be_valid
  end
end
