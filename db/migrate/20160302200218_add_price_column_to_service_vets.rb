class AddPriceColumnToServiceVets < ActiveRecord::Migration
  def change
    add_column :services_vets, :price, :string
  end
end
