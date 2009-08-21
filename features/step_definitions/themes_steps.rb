Given /^I have the following themes$/ do |theme|
  # table is a Cucumber::Ast::Table
  theme.hashes.each do |hash|
   Factory(:theme, hash)
  end
end

