class ServiceVet < ActiveRecord::Base
  belongs_to :service
  belongs_to :vet

  validates :price, presence: true
  validates_numericality_of :price, :greater_than => 0
end
