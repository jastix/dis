Given /^I have organization titled "([^\"]*)"$/ do |arg1|
  Factory(:organization, :title => arg1)
end

Given /^I have no organizations$/ do
  Organization.delete_all
end

When /^i should have ([0-9]+) organization$/ do |count|
  Organization.count.should == count.to_i
end

