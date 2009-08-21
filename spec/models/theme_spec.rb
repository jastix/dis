require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Theme do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :author => "value for author",
      :published_year => 1,
      :profession_name => "value for profession_name",
      :code_name => "value for code_name",
      :grade_name => "value for grade_name",
      :area => "value for area"
    }
  end

  it "should create a new instance given valid attributes" do
    Theme.create!(@valid_attributes)
  end


end

