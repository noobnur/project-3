class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :reg_tutor, :photo, :github, :past_experience, :terms])
     devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :reg_tutor, :photo, :github, :past_experience, :terms])
  end

end
