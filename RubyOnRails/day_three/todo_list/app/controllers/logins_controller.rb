class LoginsController < ApplicationController
  skip_before_action :require_login

  # GET /logins/new
  def new
    redirect_to todos_path unless session[:login].nil?
    @user = User.new
  end

  # POST /logins
  def create
    @user = User.new(email: login_params[:email], password: login_params[:password])
    pp @user
    if @user.registered?
      session[:login] = @user.id
      redirect_to todos_path
    else
      render :new
    end
  end

  # DELETE /logins/:id
  def destroy
    session[:login] = nil
    redirect_to new_login_path
  end

  # Only allow a trusted parameter "white list" through.
  def login_params
    params.require(:user).permit(:email, :password)
  end
end
