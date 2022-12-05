class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
  end

  def record_not_found
    render file: "#{Rails.root}/public/404.html",
           status: 404,
           layout: false
  end

  #  current_user -> User
  # before_action :authenticate_user! -> Can be used for both role
  def current_vendor
    current_user.role == "vendor"
  end
end