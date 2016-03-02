class AddServiceIdToVets < ActiveRecord::Migration
  def change
    add_column :vets, :service_id, :integer
  end
end
