class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      flash[:notice] = "Review successfully added"
      redirect_to user_reviews_path
    else
      flash[:alert] = "Review not created.  Try again."
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(
      :title,
      :body,
      :image_path,
    )
  end

end
