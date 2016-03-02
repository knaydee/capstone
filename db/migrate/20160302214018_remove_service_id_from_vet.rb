class RemoveServiceIdFromVet < ActiveRecord::Migration
  def change
    remove_column :vets, :service_id, :integer
  end
end
