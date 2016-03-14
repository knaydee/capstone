class AddPetPhotoToPets < ActiveRecord::Migration
  def self.up
      add_attachment :pets, :pet_photo
    end

    def self.down
      remove_attachment :pets, :pet_photo
    end
end
