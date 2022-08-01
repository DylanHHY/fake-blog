class ArticlesController < ApplicationController
  def show
    @article = Article.find_by(params[:id])
  end

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

  private
  def article_params
    params.require(:article).permit(:title,:content)
  end
end
