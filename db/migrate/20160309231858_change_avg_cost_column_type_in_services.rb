class ChangeAvgCostColumnTypeInServices < ActiveRecord::Migration
  def change
    remove_column :services, :avg_cost, :string
    add_column :services, :avg_cost, :integer
  end
end
