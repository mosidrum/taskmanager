class SessionsController < ApplicationController
  layout "auth"

  def new; end

  def create
    user = authenticate_user
    if user
      session[:user_id] = user.id
      redirect_to dashboard_path, notice: "Welcome back, #{user.name}!"
    else
      flash.now[:alert] = I18n.t("sessions.invalid_credentials")
      render :new, status: :unprocessable_content
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  private

  def authenticate_user
    user = User.find_by(email: params[:email])
    user&.authenticate(params[:password])
  end
end
