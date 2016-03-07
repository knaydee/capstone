class AddSexColumntoPet < ActiveRecord::Migration
  def change
    add_column :pets, :sex, :string
  end
end
