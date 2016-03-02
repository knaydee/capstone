class RemoveVetIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :vet_id, :integer
  end
end
