class RegUsersController < ApplicationController
  def index
    @regusers = RegUser.all
  end

  def show
    @user = RegUser.find(params[:id])
  end

end
