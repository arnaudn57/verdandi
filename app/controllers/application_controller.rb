class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email, :password, :age, :adherent, :admin])
  end
end
