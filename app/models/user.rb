class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :recoverable, :rememberable, :trackable

  has_many :pet_walls_user, class_name:"PetWallUser" , foreign_key: "user_id"
  has_many :winner, class_name:"PetWall" , foreign_key: "winner_id"
  has_many :user, class_name:"PetWall" , foreign_key: "user_id"



end
