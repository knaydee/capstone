class RenameServicesVetsTable < ActiveRecord::Migration
  def change
    rename_table :services_vets, :service_vets
  end
end
