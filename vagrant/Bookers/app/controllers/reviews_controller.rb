class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
  	@review = Review.new
    @reviews =Review.all
  end

  def show
  	@review = Review.find(params[:id])
  end

  def create
  	@review =Review.new(review_params)
  	if @review.save
      redirect_to review_path(@review), notice: "Book was successfully created."
    else
      render('review/show')
    end
  end

  def edit
  	@review = Review.find(params[:id])
  end

  def update
    review = Review.find(params[:id])
    if review.update(review_params)
      redirect_to review_path(review), notice: "Book was successfully update."
    else
      render('review/show')
    end
  end

  def destroy
  	review = Review.find(params[:id])
  	if review.destroy
      redirect_to new_review_path(@review), notice: "Book was successfully destroy."
    else
      render ('review/new')
    end
  end

  private

  def review_params
  	params.require(:review).permit(:title, :body)
  end

end
