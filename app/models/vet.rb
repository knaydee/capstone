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
    where("lower(address) LIKE lower(?)", "%#{search}%")
  end

  def primary(current_user)
    # instead of @vet , use self
    vet = self.id
    # instead of @user, use current_user
    current_user = User.find(current_user.id)
    user_vet = UserVet.where(:user => current_user, :vet => vet).first
    if user_vet.primary_vet
      return true
    else
      return false
    end
  end

end
