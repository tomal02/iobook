class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :country, :languages, :ide, :github, :linkedin, :twitter, :avatar])
  end  
end

