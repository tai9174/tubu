class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      # Post.create( content: params[:post][:content])
      redirect_to new_post_path, notice:"ブログを作成しました！"
    else
      render :new
    end
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
