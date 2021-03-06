class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy,]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      @post.user_id = current_user.id
      @post.name = current_user.name
      if @post.save
        redirect_to posts_path
      else
        render :new
      end
  end

  def index
    @post = Post.new
    @posts = Post.all.order("created_at DESC")
  end

  def show
    
  end

  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:message, :user_id, :name, :avatar)
  end
end
