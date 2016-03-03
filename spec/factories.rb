FactoryGirl.define do
  factory :service_vet do

  end
  factory :user_vet do

  end
  factory :service do
    name "MyString"
    type ""
    price "MyString"
    avg_cost "MyString"
  end
  factory :vet do
    name "Fiona's Favorite Vet"
    url "www.ffv.com"
    address "1234 W South St Seattle, WA 98103"
    email "info@ffv.com"
  end
  factory :user do
    username "Fiona"
    uid "1234567"
    provider "google"
    email "a@b.com"
  end

end
