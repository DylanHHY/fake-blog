class BlogController < ApplicationController
  def index
  end

  def new
  end

  def create
    # 寫入資料庫
    # render html: "已成功新增"
    redirect_to "/blog"
  end

end
