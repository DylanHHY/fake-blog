class BlogsController < ApplicationController
  def index
  end

  def new
    @article = Article.new
  end

  def create
    # 寫入資料庫
    # render html: "已成功新增"
    # redirect_to "/blogs"
    render html: params.class
    # render html:params[:content]
  end

end