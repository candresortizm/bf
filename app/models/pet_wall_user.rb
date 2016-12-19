class PetWallUser < ApplicationRecord
  belongs_to :user, class_name:"User" , foreign_key: "user_id"
  belongs_to :pet_walls, class_name:"PetWalls" , foreign_key: "pet_walls_id"
end
  
