class Pet < ActiveRecord::Base
  has_many :vets

  validates :name, :age, :species, :breed, :sex, :weight, presence: true
  validates_numericality_of :age, :weight, :greater_than => 0
end
