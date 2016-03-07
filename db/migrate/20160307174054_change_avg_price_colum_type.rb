class ChangeAvgPriceColumType < ActiveRecord::Migration
  def change
    change_column :services, :avg_price, :integer
  end
end
