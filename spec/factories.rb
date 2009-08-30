Factory.define :theme do |f|
  f.title "Science"
  f.author "Nick Me"
  f.published_year 2000
  f.profession_name "computer science"
  f.code_name "80.00.13"
  f.grade_name "Candidate of science"
  f.area "informatics"
end

Factory.define :area do |f|
  f.title "informatics"
end

Factory.define :organization do |f|
  f.title "org name"
end

