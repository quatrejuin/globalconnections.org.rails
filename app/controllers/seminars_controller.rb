class SeminarsController < ApplicationController
  include SeminarsHelper

  def index
    @seminars = Post.all
  end

  def show
    @seminar = Post.find(params[:id])
  end

  def new
    @seminar = Post.new
  end

  def create
    @seminar = Post.new(params[:post].permit(:title,:content,:order))
    if @seminar.save
      redirect_to action: "new"
    else
      render 'new'
    end
  end

  def edit
    @seminar = Post.find(params[:id])
  end

  def update
    @seminar = Post.find(params[:id])
    if @seminar.update_attributes(params[:post].permit(:title,:content,:order))
      flash[:success] = "Seminar updated"
      redirect_to @seminar
    else
      render 'edit'
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "Seminar deleted"
    redirect_to seminars_url
  end
end
