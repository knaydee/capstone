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
  {
    name: "Lake Union Veterinary Clinic",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Aurora Veterinary Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Companion Pet Clinic",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Maple Leaf Pet Corner",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "City Cat Veterinary Clinic",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Phinney Ridge Animal Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Rainier Veterinary Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Pet Care Center",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Sunset Hill Veterinary and Rehabilitation Center",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Eastlake Veterinary Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Northwest Veterinary Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Elliott Bay Animal Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Four Paws Veterinary Center",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Lien Animal Clinic",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "West Seattle Animal Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Maple Leaf Veterinary Care Center",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Mercer Street Veterinary Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Northeast Veterinary Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  },
  {
    name: "Ballard Animal Hospital",
    url: "http://lakeunionvet.com",
    address: "1222 Republican St Seattle, WA 98109",
    email: "info@jetcityanimalclinic.com",
    phone: "(206) 329-0253",
    fax: "(206) 329-0239"
  }
]

vets.each do |v|
  vet = Vet.new(v)
  vet.save(validate: false)
end

services = [
  {
    name: "Bordatella (Oral) Vaccination",
    service_type: "Vaccinations",
    avg_cost: 2500
  },
  {
    name: "Rabies Vaccination",
    service_type: "Vaccinations",
    avg_cost: 1250
  },
  {
    name: "Office Calls",
    service_type: "General Care",
    avg_cost: 5000
  },

  {
    name: "Heartworm Test",
    service_type: "Blood Tests",
    avg_cost: 4750
  },
  {
    name: "Geriatric Screening",
    service_type: "Exams",
    avg_cost: 9750
  },
  {
    name: "Allergy Testing",
    service_type: "Blood Tests",
    avg_cost: 250002
  },
  {
    name: "Allergy Testing",
    service_type: "Skin Tests",
    avg_cost: 22250
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
    price: 2150
  },
  {
    vet_id: 1,
    service_id: 2,
    price: 1600
  },
  {
    vet_id: 2,
    service_id: 2,
    price: 1000
  },
  {
    vet_id: 3,
    service_id: 1,
    price: 2500
  },
  {
    vet_id: 3,
    service_id: 2,
    price: 4000
  },
  {
    vet_id: 4,
    service_id: 3,
    price: 6000
  },
  {
    vet_id: 3,
    service_id: 3,
    price: 4500
  },
  {
    vet_id: 1,
    service_id: 3,
    price: 9000
  },
]

service_vets.each do |sv|
  service_vet = ServiceVet.new(sv)
  service_vet.save(validate: false)
end

# user_vets = [
#   {
#     user_id: 4,
#     vet_id: 1,
#     favorite: true
#   },
#   {
#     user_id: 2,
#     vet_id: 1,
#     favorite: false
#   },
#   {
#     user_id: 3,
#     vet_id: 1,
#     favorite: true
#   },
#   {
#     user_id: 2,
#     vet_id: 2,
#     favorite: true
#   },
#   {
#     user_id: 1,
#     vet_id: 3,
#     favorite: false
#   },
# ]
#
# user_vets.each do |uv|
#   user_vet = UserVet.new(uv)
#   user_vet.save(validate: false)
# end

pets = [
  {
    name: "Fiona",
    age: 9,
    breed: "poodle-mix",
    weight: 16,
    size: "small",
    species: "dog",
    sex: "female",
    user_id: 4
  },
  {
    name: "Finnigan",
    age: 2,
    breed: "doxie-poo",
    weight: 9,
    size: "small",
    species: "dog",
    sex: "male",
    user_id: 4
  },
  {
    name: "Noah",
    age: 12,
    breed: "siamese",
    weight: 10,
    size: "small",
    species: "cat",
    sex: "male",
    user_id: 4
  },
  {
    name: "Anna",
    age: 9,
    breed: "siamese",
    weight: 20,
    size: "small",
    species: "cat",
    sex: "female",
    user_id: 4
  },
]

pets.each do |p|
  pet = Pet.new(p)
  pet.save(validate: false)
end
