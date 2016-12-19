class PetWall < ApplicationRecord
  has_many :pet_wall_users, class_name:"PetWallUser" , foreign_key: "pet_walls_id"
  belongs_to :winner, class_name:"User" , foreign_key: "winner_id" , optional: true
  belongs_to :user, class_name:"User" , foreign_key: "user_id"

  mount_uploader :image, ImageUploader

end
