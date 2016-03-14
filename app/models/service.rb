class Service < ActiveRecord::Base
  has_many :vets
  has_many :vets, through: :service_vets

  validates :name, presence: true
  validates :name, uniqueness: true


end
