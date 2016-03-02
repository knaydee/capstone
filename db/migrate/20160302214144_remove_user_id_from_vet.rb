class RemoveUserIdFromVet < ActiveRecord::Migration
  def change
    remove_column :vets, :user_id, :integer
  end
end
