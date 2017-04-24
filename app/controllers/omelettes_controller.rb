class OmelettesController < ApplicationController
  def index
    render component: 'Root'
  end
end
