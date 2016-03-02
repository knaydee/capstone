class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :type
      t.string :price
      t.string :avg_cost
      t.integer :vet_id
      t.timestamps null: false
    end
  end
end
