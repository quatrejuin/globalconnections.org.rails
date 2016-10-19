class StaticPagesController < ApplicationController
  def home
    @seminars = Post.all
  end

  def about
  end

  def news_and_initiatives
    @seminars = Post.all
  end

  def publications
  end

  def seminars
    @seminars = Post.all
  end
end
