FactoryGirl.define do
  factory :vet do
    name "MyString"
    url "MyString"
    address "MyString"
    email "MyString"
    user_id 1
  end
  factory :user do
    username "Fiona"
    uid "1234567"
    provider "Google"
    email "a@b.com"
  end

end
