class Api::V1::ThingsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Omelette.all
  end

  def show
    omelette = Omelette.find(params[:id])
    render json: omelette
  end

  private

  def omelette_params
    params.require(:omelette).permit(:id, :title, :description, :ingredients)
  end
end
