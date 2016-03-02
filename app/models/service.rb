class Service < ActiveRecord::Base
  has_many :vets, through: :service_vet
end
