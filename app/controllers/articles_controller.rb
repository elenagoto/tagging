class ArticlesController < ApplicationController

  # before actions
  before_action :load_article, only: [:show, :edit, :update]

  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all
    end
  end

  def show
    
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to articles_path
    else
      render 'edit'
    end
  
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :tag_list)
  end

  def load_article
    @article = Article.find(params[:id])
  end
end
