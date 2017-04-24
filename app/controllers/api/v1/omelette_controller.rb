class Api::V1::ThingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Omelette.all
  end

  def show
    omelette = Omelette.find(params[:id])
    render json: omelette
  end

  private

  def omelette_params
    params.require(:omelette).permit(:id, :name)
  end
end
