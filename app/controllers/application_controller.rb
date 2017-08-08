class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  private 

  def after_sign_out_path_for(resource_or_scope)
  	 root_url
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :address, :phonenum, :image])
  end

end
# 