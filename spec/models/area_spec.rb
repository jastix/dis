require File.dirname(__FILE__) + '/../spec_helper'

describe Area do
  context "validation"
    it "should not be valid with all attributes nil" do
      Area.new.should_not be_valid
    end

    it "should be valid with title more than 3 characters" do
      area = Area.new(:title => "four")
      area.should be_valid
    end

    it "should not be valid with title less than 3 characters" do
      area = Area.new(:title => "tu")
      area.should_not be_valid
    end

    it "title should not start with digit" do
      area = Area.new(:title => "2fail")
      area.should_not be_valid
    end

end

