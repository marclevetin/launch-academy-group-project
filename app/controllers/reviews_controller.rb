class ReviewsController < ApplicationController
  def new
    @omellete = Omelette.find(params[:omelette_id])
    @review = Review.new
  end

  def create
    @user = current_reg_user
    @omelette = Omelette.find(params[:omelette_id])
    @review = Review.new(review_params)
    @review.reg_user = @user
    @review.omelette = @omelette
    if @review.save
      ReviewMailer.new_review(@review).deliver_later
      flash[:notice] = "Review successfully added"
      redirect_to omelette_path(@omelette)
    else
      flash[:alert] = "Review not created.  Try again."
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(
      :rating,
      :body
    )
  end
end
