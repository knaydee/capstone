class ChangePriceColumnTypeInServiceVets < ActiveRecord::Migration
  def change
    remove_column :service_vets, :price, :string
    add_column :service_vets, :price, :integer
  end
end
