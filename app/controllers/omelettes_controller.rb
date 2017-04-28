class OmelettesController < ApplicationController
  before_action :authenticate_reg_user!, except: [:index, :show]
  before_action :authorize_user, only: [:destroy]

  def create
    @user = current_reg_user
    @omelette = Omelette.new(omelette_params)
    @omelette.reg_user_id = @user.id
    if @omelette.save
      flash[:notice] = "Omelette successfully added"
      redirect_to omelette_path(@omelette)
    else
      flash[:alert] = "Omelette not created.  Try again."
      render :new
    end
  end

  def destroy
    @omelette = Omelette.find(params[:id])
    @omelette.destroy
    flash[:success] = "Omelette has been trashed."
    redirect_to omelettes_path
  end

  def index
    @omelettes = Omelette.all
  end

  def new
    @omelette = Omelette.new
  end

  def show

  end

  private

  def omelette_params
    params.require(:omelette).permit(
      :title,
      :description,
      :ingredients,
      :photo
    )
  end

  def authorize_user
    if !reg_user_signed_in? || !current_reg_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
