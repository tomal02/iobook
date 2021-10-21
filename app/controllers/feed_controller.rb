class FeedController < ApplicationController
  # before_action :find_post, only: [:show]

  # def new
  #   @post = Post.new
  # end

  # def create
  #   @post = Post.new(post_params)
  #     if @post.save
  #       redirect_to posts_path
  #     else
  #       render :new
  #     end
  # end

  def newsfeed
    @post = Post.new
    @posts = Post.all.order("created_at DESC")
  end

  # def show
    
  # end

  # private

  # def post_params
  #   params.require(:post).permit(:message)
  # end
end