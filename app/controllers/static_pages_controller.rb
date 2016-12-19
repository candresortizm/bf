class StaticPagesController < ApplicationController

  def welcome
    if fundation_signed_in?
      @pet_wall= PetWall.where(user_id:current_fundation.id)
    else
      @pet_wall= PetWall.all
    end
  end

  def fundations
    redirect_to new_fundation_registration_path
  end
end
