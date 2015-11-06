class RegistrationsController < Devise::RegistrationsController
  protected

  # def after_sign_up_path_for(resource)
  #   '/resource/:id' # Or :prefix_to_your_route
  # end

  private

  def sign_up_params
  	if request.original_url.include?("customer")
	    params.require(:customer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  	elsif request.original_url.include?("developer")	  
	 	  params.require(:developer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	 	else
	 		redirect root_path
  	end
  end


  def account_update_params
  	if request.original_url.include?("customer")
	    params.require(:customer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  	elsif request.original_url.include?("developer")	  
	 	  params.require(:developer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	 	else
	 		redirect root_path
  	end
  end
end
