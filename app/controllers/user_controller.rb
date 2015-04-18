class UserController < Devise::RegistrationsController
  def edit
  
  end
  
  def show
  
  end
  
  private
  
    def user_params
      params.require(:facility).permit(:id, :first_name, :last_name, :description, address_attributes: [:id, :address1, :address2, :city, :state, :zip_code, :phone])
    end
end
