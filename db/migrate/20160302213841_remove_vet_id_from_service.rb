class RemoveVetIdFromService < ActiveRecord::Migration
  def change
    remove_column :services, :vet_id, :integer
  end
end
