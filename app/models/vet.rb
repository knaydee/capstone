class Vet < ActiveRecord::Base
  belongs_to :users
  belongs_to :pet
  has_many :user_vets
  has_many :users, through: :user_vets
  has_many :service_vets
  has_many :services, through: :service_vets

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

end
