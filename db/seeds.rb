# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  { username: "Ada",
    provider: "google",
    uid: 234567,
    email: "ada@gmail.com"
  },
  { username: "Fiona",
    provider: "google",
    uid: 345678,
    email: "fiona@gmail.com"
  },
  { username: "Finnigan",
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
  { name: "Animal Hospital of Lynnwood",
    url: "https://my.vetmatrixbase.com/holistic-pet-care.com/services/lynnwood-services.html",
    address: "19503 56th Ave W Lynnwood, WA 98036",
    email: "animalwellness@holistic-pet-care.com",
    phone: "(425) 771-6300",
    fax: "(425) 672-1107"
  },
  { name: "Animal Wellness and Rehab Center",
    url: "https://my.vetmatrixbase.com/holistic-pet-care.com/services/bellevue-services.html",
    address: "2115 112th Ave. NE #100",
    email: "animalwellness@holistic-pet-care.com",
    phone: "(425) 455-8900",
    fax: "(425) 455-9946"
  },
  { name: "Greenlake Animal Hospital",
    url: "http://www.greenlakevet.com/",
    address: "6857 Woodlawn Ave NE, Seattle, WA 98115",
    email: "",
    phone: "(206) 524-6540",
    fax: "(206) 525-7090"
  },
  { name: "Jet City Animal Clinic",
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
