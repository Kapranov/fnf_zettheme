class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  protected

  def after_sign_in_path_for(resource)
    # landing_index_path(current_user)
    # landing_index_path
    # home_index_path
    # companies_path
    # dashboards_dashboard_1_path
    dashboard_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
      :name, :email, :role, :password, :password_confirmation,
      :remember_me, :avatar, :avatar_cache) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(
      :id,
      :password,
      :password_confirmation,
      :current_password,
      :role,
      :name,
      :email,
      :avatar,
      :avatar_cache,
      :remove_avatar,
      :_destroy
    )}
  end
end
