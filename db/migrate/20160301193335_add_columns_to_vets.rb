class AddColumnsToVets < ActiveRecord::Migration
  def change
    add_column :vets, :phone, :string
    add_column :vets, :fax, :string
  end
end
