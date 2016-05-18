class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end

  def create
    @category = Category.new
    @category.post = @category

    if @category.save
      redirect_to post_categories_path(@post, @category), notice: "New Post Created"
    else
      render :new
    end
  end

  def destroy
  end

  def show
    @category = Category.find( params[:id] )
  end
end
