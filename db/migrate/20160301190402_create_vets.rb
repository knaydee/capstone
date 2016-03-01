class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :name
      t.string :url
      t.string :address
      t.string :email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
