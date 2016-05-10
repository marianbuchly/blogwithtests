class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
  end

  def destroy
  end

  def show
  end
end
