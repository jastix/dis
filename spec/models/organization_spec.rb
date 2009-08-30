require File.dirname(__FILE__) + '/../spec_helper'

describe Organization do
  context "validations"
    it "should not be valid with nils" do
      Organization.new.should_not be_valid
    end

    it "should not be valid with title less than 3 symbols" do
      org = Organization.new(:title => 'tu')
      org.should_not be_valid
    end

    it "should not be valid when title start with digit" do
      org = Organization.new(:title => "2fail")
      org.should_not be_valid
    end

    it "should be valid" do
      org = Organization.new(:title => 'Big lab')
      org.should be_valid
    end
end

