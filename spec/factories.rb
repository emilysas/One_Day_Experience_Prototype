FactoryGirl.define do

  factory :favorite do
    student nil
    favorited nil
  end

  
  factory :student do
    name "Jonny"
    email "student@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :professional do
    email "professional@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :profile do
    name "Emily"
    professional
    job "Software Engineer"
  end

end