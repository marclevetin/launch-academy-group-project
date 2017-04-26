class Api::V1::OmelettesController < Api::ApiController

  def index
    render json: { omelette: Omelette.all }
  end
end
