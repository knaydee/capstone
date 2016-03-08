class AddPrimaryKeyToUserVets < ActiveRecord::Migration
  def change
    add_column :user_vets, :id, :primary_key
  end
end
