# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {
    username: "Ada",
    provider: "google",
    uid: 234567,
    email: "ada@gmail.com"
  },
  {
    username: "Fiona",
    provider: "google",
    uid: 345678,
    email: "fiona@gmail.com"
  },
  {
    username: "Finnigan",
    provider: "google",
    uid: 456789,
    email: "finnigan@gmail.com"
  },
]

users.each do |u|
  user = User.new(u)
  user.save(validate: false)
end

vets = [
  {
    name: "Animal Hospital of Lynnwood",
    url: "https://my.vetmatrixbase.com/holistic-pet-care.com/services/lynnwood-services.html",
    address: "19503 56th Ave W Lynnwood, WA 98036",
    email: "animalwellness@holistic-pet-care.com",
    phone: "(425) 771-6300",
    fax: "(425) 672-1107"
  },
  {
    name: "Animal Wellness and Rehab Center",
    url: "https://my.vetmatrixbase.com/holistic-pet-care.com/services/bellevue-services.html",
    address: "2115 112th Ave. NE #100",
    email: "animalwellness@holistic-pet-care.com",
    phone: "(425) 455-8900",
    fax: "(425) 455-9946"
  },
  {
    name: "Greenlake Animal Hospital",
    url: "http://www.greenlakevet.com/",
    address: "6857 Woodlawn Ave NE, Seattle, WA 98115",
    email: "",
    phone: "(206) 524-6540",
    fax: "(206) 525-7090"
  },
  {
    name: "Jet City Animal Clinic",
    url: "http://jetcityanimalclinic.com/",
    address: "822 12th Avenue Seattle, WA 98122",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
]

vets.each do |v|
  vet = Vet.new(v)
  vet.save(validate: false)
end

services = [
  {
    name: "Bordatella (Oral)",
    service_type: "Vaccinations",
    avg_cost: "$20-$30"
  },
  {
    name: "Rabies",
    service_type: "Vaccinations",
    avg_cost: "$10-$15"
  },
  {
    name: "Office Calls",
    service_type: "General Care",
    avg_cost: "$45-$55"
  },

  {
    name: "Heartworm Test",
    service_type: "Blood Tests",
    avg_cost: "$45-$50"
  },
  {
    name: "Geriatric Screening",
    service_type: "Exams",
    avg_cost: "$85-$110"
  },
  {
    name: "Allergy Testing",
    service_type: "Blood Tests",
    avg_cost: "$200-$300"
  },
  {
    name: "Allergy Testing",
    service_type: "Skin Tests",
    avg_cost: "$195-$250"
  },
]

services.each do |s|
  service = Service.new(s)
  service.save(validate: false)
end

service_vets = [
  {
    vet_id: 1,
    service_id: 1,
    price: "$21.50"
  },
  {
    vet_id: 1,
    service_id: 2,
    price: "$16"
  },
  {
    vet_id: 2,
    service_id: 2,
    price: "$10"
  },
  {
    vet_id: 3,
    service_id: 1,
    price: "$25"
  },
  {
    vet_id: 3,
    service_id: 2,
    price: "$40"
  },
  {
    vet_id: 4,
    service_id: 3,
    price: "$60"
  },
  {
    vet_id: 3,
    service_id: 3,
    price: "$45"
  },
  {
    vet_id: 1,
    service_id: 3,
    price: "$90"
  },
]

service_vets.each do |sv|
  service_vet = ServiceVet.new(sv)
  service_vet.save(validate: false)
end

user_vets = [
  {
    user_id: 1,
    vet_id: 1,
    favorite: true
  },
  {
    user_id: 2,
    vet_id: 1,
    favorite: false
  },
  {
    user_id: 3,
    vet_id: 1,
    favorite: true
  },
  {
    user_id: 2,
    vet_id: 2
  },
  {
    user_id: 1,
    vet_id: 3
  },
]

user_vets.each do |uv|
  user_vet = UserVet.new(uv)
  user_vet.save(validate: false)
end
