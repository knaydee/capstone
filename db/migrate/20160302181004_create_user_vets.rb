class CreateUserVets < ActiveRecord::Migration
  def change
    create_table :user_vets do |t|

      t.timestamps null: false
    end
  end
end
