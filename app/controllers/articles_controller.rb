class ArticlesController < ApplicationController
  def create

    @article = Article.new(article_params)

    if @article.save 
      redirect_to "/"
    else
      redirect_to "blog/new"
    end
  end

  private
  def article_params
    params.require(:article).permit(:title,:content)
  end
end
