class UserVet < ActiveRecord::Base
  has_many :vets, through: :user_vet
end
