FactoryGirl.define do
  
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

  factory :profession do
    role "Doctor"
  end

  factory :profile do
    id 1
    name "Emily"
    professional
    profession
  end

end