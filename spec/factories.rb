FactoryGirl.define do
  factory :change_avg_price_colum_type do

  end
  factory :pet do
    name "Fiona"
    age 1
    breed "poodle"
    weight 1
    size "small"
    species "dog"
    sex "female"
  end

  factory :service_vet do
    vet
    service
    price 2500
  end

  factory :user_vet do
    user
    vet
  end

  factory :service do
    name "Rabies Vaccination"
    service_type "Vaccinations"
    avg_cost 1250
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
