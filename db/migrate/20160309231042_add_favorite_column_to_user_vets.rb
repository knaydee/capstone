class AddFavoriteColumnToUserVets < ActiveRecord::Migration
  def change
    add_column :user_vets, :favorite, :boolean
  end
end
