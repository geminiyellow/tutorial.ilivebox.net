class ApplicationController < ActionController::Base
  before_action :require_login

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def require_login
    redirect_to new_login_path if session[:login].nil?
  end

  protected
  def authorize
    session[:authorized] = true
  end

  def http_basic_authenticated?
    session[:authorized]
  end

  def end_session
    session[:authorized] = nil
  end
end
