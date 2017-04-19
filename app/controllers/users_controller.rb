class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User successfully added"
      redirect_to users_path
    else
      flash[:alert] = "User not created.  Try again."
      render :new
    end
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :encrypted_password,
      :role
    )

  end

end