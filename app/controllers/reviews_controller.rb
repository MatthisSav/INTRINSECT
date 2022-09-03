class ReviewsController < ApplicationController
  def new
    @insect = Insect.new
    authorize @insect
  end

  def create
    @insect = Insect.find(params[:insect_id])
    @review = Review.new(review_params)
    @review.insect = @insect
    if @review.save
      redirect_to insect_path(@insect)
    else
      render 'insects/show'
    end

    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
