class CreateSeviceVetJoinTable < ActiveRecord::Migration
  def change
    create_join_table :vets, :services do |t|
    end
  end
end
