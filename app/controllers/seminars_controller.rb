class SeminarsController < ApplicationController
  def index
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(params[:post].permit(:title,:content))
    if @post.save
      redirect_to action: "new"
    else
      render 'new'
    end
  end
end
