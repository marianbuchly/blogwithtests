class PostsController < ApplicationController
  # before_filter :authenticate_admin!

  def index
    @posts = Post.all
  end

  def show
    @post = @user.posts
  end

  def create
    @post = Post.new(post_params)
    @post.user = @post

    if @post.save
      redirect_to user_post_path(@user, @post), notice: "New Post Created"
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end
end

private

    def post_params
      params.require(:post).permit(:title)
    end
