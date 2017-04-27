class Api::V1::OmelettesController < ApplicationController

  def index
    render json: { omelette: Omelette.all }
  end
end
