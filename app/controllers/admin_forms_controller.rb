class AdminFormsController < ApplicationController
  before_action :authenticate_fundation!#autenticador se coloca en el controlador que quieras restringir
    def index
      if fundation_signed_in?
        @admin_forms= PetWall.where(user_id:current_fundation.id)
      end
    end

    def new
      @pet_wall = PetWall.new
    end

    def edit
      find_admin_forms
      if @pet_wall == nil
        flash[:error] = "No existe el producto"
        redirect_to root_path
      end
    end

    def create
      @admin_forms.state = "No adopted"
      @admin_forms = PetWall.new(admin_forms_params)
      @admin_forms.user_id = current_fundation.id
        if @admin_forms.save!
          redirect_to admin_forms_path
        end
    end

    def destroy
      find_admin_forms
      if @pet_wall.destroy
        flash[:error] = "producto eliminado"
        redirect_to admin_forms_path
      end
    end

    def show
      find_admin_forms
      if @pet_wall.nil?
        flash[:error] = "Houston we are in troubles, please dont hack us."
        redirect_to root_path
      end
    end


    def update
        find_admin_forms
        if @pet_wall.update(admin_forms_params)
          redirect_to admin_form_path(params[:id])
        end
    end

    private

    def find_admin_forms
      @pet_wall = PetWall.find_by(id: params[:id])
    end

    #strong parameters
    def admin_forms_params
      params.require(:pet_wall).permit(:name , :breed , :size , :age , :type , :descriptions , :state , :image, :admission_date)
    end
end
