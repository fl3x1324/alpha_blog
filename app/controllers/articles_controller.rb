class ArticlesController < ApplicationController
  def show
    article_id = params[:id]
    @article = Article.find(article_id)
  end

  def index
    @articles = Article.all
  end
end