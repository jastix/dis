Given /^I have the following themes$/ do |theme|
  # table is a Cucumber::Ast::Table
  theme.hashes.each do |hash|
  #Theme.create!(:title => theme.title, :author => theme.author, :year => theme.published_year, :profession_name => theme.profession_name, :code_name => theme.code_name, :grade_name => theme.grade_name, :area => theme.area)
    Factory(:theme, hash)
  end
end

