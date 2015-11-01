class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # authenticate_developer!
  # authenticate_customer!

  protected
  def after_sign_in_path_for(resource)
    resource
  end

end
