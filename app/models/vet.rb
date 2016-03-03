class Vet < ActiveRecord::Base
  belongs_to :users

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

end
