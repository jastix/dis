Given /^I have area titled ([^\"]*)$/ do |arg|
  Factory(:area, :title => arg)
end
Given /^I have no areas$/ do
  Area.delete_all
end

When /^i follow ([^\"]*)$/ do |link|
  click_link(link)
end

When /^i fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end


When /^i press "([^\"]*)"$/ do |button|
  click_button(button)
end

When /^i should see "([^\"]*)"$/ do |text|
  response.should contain(text)
end

When /^i should have ([0-9]+) area$/ do |count|
  Area.count.should == count.to_i
end

