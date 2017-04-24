class OmelettesController < ApplicationController
  def index
    render component: 'OmeletteIndex'
  end
end
