class PostController < ApplicationController

  def new

  end

  def create
    Post.create(post_params)
    redirect_to site_path
  end

  private

  def post_params
    params.require(:post).permit(:title,:link)
end
end