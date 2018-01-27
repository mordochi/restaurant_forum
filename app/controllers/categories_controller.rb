class CategoriesController < ApplicationController
  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @restaurants = @category.restaurants.order(id: :desc).page(params[:page]).per(9)
  end
end
