class CreateUserVetJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :vets do |t|
    end
  end
end
