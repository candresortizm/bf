class Adopters::AdopterController < ApplicationController
  before_action :authenticate_adopter!#autenticador se coloca en el controlador que quieras restringir

  def new_quertionary
    if current_adopter.score!=nil
      redirect_to root_path
    end
  end

  def create_quertionary
    puntaje = 0
    params.each do |key, value|
      if key[0..2].eql? "opt"
        puntaje = puntaje + value.to_i
      end
    end
    user = User.find_by(id: current_adopter.id)
    user.update(:score => puntaje)
    redirect_to root_path
  end

end
