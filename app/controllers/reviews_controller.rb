class ReviewsController < ApplicationController
  def create
    @hairdresser = Hairdresser.find(params[:hairdresser_id])
    @review = Review.new(review_params)
    @review.hairdresser = @hairdresser
    if @review.save
      redirect_to hairdresser_path(@hairdresser)
    else
      render 'hairdressers/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
