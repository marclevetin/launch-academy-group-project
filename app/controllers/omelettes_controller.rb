class OmelettesController < ApplicationController
  def index
    render component: 'Root'
    if params[:search]
   @recipes =Omelette.search(params[:search]).order("created_at DESC")
 else
   @recipes = Omelette.all.order("created_at DESC")
 end
end
