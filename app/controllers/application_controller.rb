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
    I18n.locale = params[:lang] || I18n.default_locale
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

end
