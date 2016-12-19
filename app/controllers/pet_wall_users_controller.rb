class PetWallUsersController < ApplicationController

  before_action :authenticate_fundation!#autenticador se coloca en el controlador que quieras restringir
    def index
      if fundation_signed_in?
        @pet_wall_user= PetWallUser.where(user_id:current_fundation.id)
      end
    end

  
    private

    def find_pet_wall_user
      @pet_wall_user = PetWallUser.find_by(id: params[:id])
    end

    #strong parameters
    def pet_wall_users_params
      params.require(:pet_wall).permit(:pet_walls_id , :user_id , :score , :comments )
    end

end
