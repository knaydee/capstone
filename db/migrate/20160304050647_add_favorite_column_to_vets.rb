class AddFavoriteColumnToVets < ActiveRecord::Migration
  def change
    add_column :vets, :favorite, :boolean
  end
end
