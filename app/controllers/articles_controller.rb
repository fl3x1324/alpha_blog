class ArticlesController < ApplicationController
  def show
    article_id = params[:id]
    @article = Article.find(article_id)
  end
end