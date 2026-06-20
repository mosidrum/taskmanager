class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def require_login
    redirect_to login_path unless current_user
  end

  def redirect_if_logged_in
    redirect_to dashboard_root_path if current_user
  end
end
