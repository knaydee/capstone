class AddFavoriteColumnToUserVets < ActiveRecord::Migration
  def change
    remove_column :vets, :favorite, :boolean
    add_column :user_vets, :favorite, :boolean
  end
end
