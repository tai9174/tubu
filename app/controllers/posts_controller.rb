class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
      Post.create(post_params)
      # Post.create( content: params[:post][:content])
      redirect_to new_post_path
  end

  def show
    # redirect_to new_post_path
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
