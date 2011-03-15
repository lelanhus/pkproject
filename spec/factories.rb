Factory.define :brick do |f|
  f.sequence(:name) { |n| Faker::Company.name + "#{n}" }
end