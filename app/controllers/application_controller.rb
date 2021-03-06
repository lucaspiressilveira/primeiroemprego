class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:cpf,:birth_date, :about_me,:encrypted_password])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:cnpj, :about_us])
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :cnpj, :about_us, :cpf, :birth_date, :about_me,:encrypted_password)}
  end


end
