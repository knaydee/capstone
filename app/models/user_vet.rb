class UserVet < ActiveRecord::Base
  belongs_to :user
  belongs_to :vet

  alias_attribute :primary_vet, :favorite

  validates_uniqueness_of :vet_id, scope: :user_id
end
