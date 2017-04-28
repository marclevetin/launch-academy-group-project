class Api::V1::OmelettesController < ApplicationController
  def index
    render json: { omelette: Omelette.all }
  end

  def show
    render json: {
      omelette: Omelette.find(params[:id]),
      reviews: Omelette.find(params[:id]).reviews
    }
  end
end
