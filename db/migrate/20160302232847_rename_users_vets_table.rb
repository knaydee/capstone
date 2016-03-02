class RenameUsersVetsTable < ActiveRecord::Migration
  def change
    rename_table :users_vets, :user_vets
  end
end
