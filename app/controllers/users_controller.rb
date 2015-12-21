class UsersController < ApplicationController
  before_action :find_user

  def index
    @users = User.order("username DESC")
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      session[:user_id] = @user.id
  		redirect_to root_url, :notice => "Signed up!"
  	else
      flash[:notice] = "User already exsists."
  		render "new"
  	end
  end

  private

  def find_user
    @user = User.find(params[:id]) if params[:id]
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
