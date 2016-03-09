class ChangePriceColumnTypeinServiceVets < ActiveRecord::Migration
  def change
    change_column :service_vets, :price, :integer

  end
end
