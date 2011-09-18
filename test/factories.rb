FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "z#{n}@l.go"}
    password 'satan'*3
  end
end
