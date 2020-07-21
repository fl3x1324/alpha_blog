# frozen_string_literal: true

# Our articles controller
class ArticlesController < ApplicationController
  before_action :article_by_id, only: %i[show update edit destroy]
  include ApplicationHelper

  def show
    format = params[:format]
    if format == 'json'
      render json: @article
    else
      render 'articles/show'
    end
  end

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:notice] = 'Article has been saved.'
      redirect_to @article
    else
      render :new
    end
  end

  def edit; end

  def update
    if @article.update article_params
      flash[:notice] = 'Article was updated successfully!'
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    flash[:notice] = 'Article has been destroyed!'
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def article_by_id
    @article = Article.find params[:id]
  end
end
