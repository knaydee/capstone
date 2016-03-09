class RemoveFavoriteColumnFromVets < ActiveRecord::Migration
  def change
    remove_column :vets, :favorite, :boolean
  end
end
