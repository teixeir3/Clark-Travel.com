class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :current_user_is_admin? ,:permitted_params, :signed_in?

  private

  def current_user
    return nil unless session[:token]
    @current_user ||= User.find_by_session_token(session[:token])
  end

  def current_user_is_admin?
    current_user && current_user.is_admin?
  end

  def signed_in?
    !!current_user
  end

  def sign_in(user)
    @current_user = user
    session[:token] = user.reset_session_token!
  end

  def sign_out!
    current_user.try(:reset_session_token!)
    session[:token] = nil
  end

  def require_signed_in!
    redirect_to new_session_url unless signed_in?
  end

  def require_signed_out!
    redirect_to user_url(current_user) if signed_in?
  end

  def password_confirmed?
    params[:password] != params[:user][:password]
  end

  def permitted_params
    @permitted_params ||= PermittedParams.new(params, current_user)
  end
end
