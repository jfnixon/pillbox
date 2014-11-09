FactoryGirl.define do 
  factory :user do 
    sequence(:email) { |n| "joe-#{n}@doma.in" }
    password "password"
    password_confirmation "password"

  end

end
