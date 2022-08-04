class ArticlesController < ApplicationController
  before_action :require_login, except: [:show]
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def create

    # @article = Article.new(article_params)
    # @article.user = current_user
    @article = current_user.articles.new(article_params)



    if @article.save 
      flash[:notice] = "文章新增成功"
      redirect_to "/"
    else
      render "blogs/new"
      #借 app/views/blogs/new
      # redirect_to "/blogs/new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "文章編輯成功"
      redirect_to blogs_path
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    # flash[:notice] = "文章刪除成功"  #太常用了
    redirect_to blogs_path, notice: "文章刪除成功"  # arlert也可以
  end

  private
  def article_params
    params.require(:article).permit(:title,:content)
  end

  def find_article
    @article = Article.find_by(id: params[:id])
  end
end
