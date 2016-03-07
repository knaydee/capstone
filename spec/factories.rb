FactoryGirl.define do
  factory :change_avg_price_colum_type do
    
  end
  factory :pet do
    name "MyString"
    age 1
    breed "MyString"
    weight 1
    size "MyString"
  end

  factory :service_vet do
    service_id 1
    vet_id 1
    price 2150

  end

  factory :user_vet do
    user_id 1
    vet_id 1
  end

  factory :service do
    name "Rabies Vaccination"
    service_type "Vaccinations"
    avg_cost "$10-$15"
  end

  factory :vet do
    id 1
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
