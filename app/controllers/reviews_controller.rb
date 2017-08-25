class ReviewsController < ApplicationController
  def create
    @hairdresser = Hairdresser.find(params[:hairdresser_id])
    @review = Review.new(review_params)
    @review.hairdresser = @hairdresser
    if @review.save
      respond_to do |format|
        format.html { redirect_to hairdresser_path(@hairdresser) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'hairdressers/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end




