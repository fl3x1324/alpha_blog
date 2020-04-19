class ArticlesController < ApplicationController
  def show
    article_id = params[:id]
    @article = Article.find(article_id)
    format = params[:format]
    if format == "json"
      render json: @article
    else
      render "articles/show"
    end
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(permit_article_fields)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private

  def permit_article_fields
    params.require(:article).permit(:title, :description)
  end
end
