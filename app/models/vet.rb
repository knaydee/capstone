class Vet < ActiveRecord::Base
  belongs_to :users

  validates :name, presence: true
  validates :name, uniqueness: true

end
