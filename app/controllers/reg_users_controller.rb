class RegUsersController < ApplicationController
  def index
    @regusers = RegUser.all
  end

  def show
    @user = User.find(params[:id])
  end

end
