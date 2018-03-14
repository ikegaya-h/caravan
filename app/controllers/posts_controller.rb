class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def show
  	  @post = Post.find(parms[:id])
  end

  private

  def post_params
  	  parms.require(:post).permit(:title, :body, :category)
  end
end
