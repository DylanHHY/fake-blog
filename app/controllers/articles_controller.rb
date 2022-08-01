class ArticlesController < ApplicationController
  def create

    @article = Article.new(article_params)

    if @article.save 
      redirect_to "/"
    else
      render "blogs/new"
      #借 app/views/blogs/new
      # redirect_to "/blogs/new"
    end
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def edit
    @article = Article.find_by(params[:id])
  end

  def update
    @article = Article.find_by(params[:id])
    if @article.update(article_params)
      redirect_to blogs_path
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find_by(params[:id])
    @article.destroy
    redirect_to blogs_path
  end

  private
  def article_params
    params.require(:article).permit(:title,:content)
  end
end
