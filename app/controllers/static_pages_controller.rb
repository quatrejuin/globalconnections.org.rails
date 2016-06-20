class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def news_and_initiatives
  end

  def publications
  end

  def seminars
    @seminars = Post.all
  end
end
