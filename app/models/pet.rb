class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :vets

  validates :name, :age, :species, :breed, :sex, :weight, presence: true
  validates_numericality_of :age, :weight, :greater_than => 0

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :pet_photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :pet_photo, :content_type => /\Aimage\/.*\Z/
end
