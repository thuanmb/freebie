class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # rescue_from ActiveRecord::RecordNotFound do
  #   flash[:alert] = 'Resource not found.'
  #   redirect_back_or root_path
  # end

  before_action :set_locale
 
  def set_locale
    if params[:lang]
      session[:locale] = params[:lang]
    end

    I18n.locale = session[:locale] || I18n.default_locale
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

  before_filter :store_location

  def store_location
    if params[:return_url]
      url = params[:return_url]
      session[:user_return_to] = url
    end
  end

  def stored_location_for(resource_or_scope)
    session[:user_return_to] || super
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end

end
