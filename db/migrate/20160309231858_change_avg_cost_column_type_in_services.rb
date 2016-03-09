class ChangeAvgCostColumnTypeInServices < ActiveRecord::Migration
  def change
    change_column :services, :avg_cost, :integer
  end
end
