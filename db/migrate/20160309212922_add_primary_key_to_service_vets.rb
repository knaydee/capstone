class AddPrimaryKeyToServiceVets < ActiveRecord::Migration
  def change
    add_column :service_vets, :id, :primary_key
  end
end
