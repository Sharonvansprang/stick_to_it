class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_profile
 protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end


  def check_profile

  if current_user && current_user.profile.nil?
    flash[:alert] = "Without a profile, you cannot join a challenge."

    redirect_to new_profile_path

  end

end
end
