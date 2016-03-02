class AddVetIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vet_id, :integer
  end
end
