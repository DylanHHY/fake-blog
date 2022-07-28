class BlogsController < ApplicationController
  def index
  end

  def new
  end

  def create
    # 寫入資料庫
    # render html: "已成功新增"
    redirect_to "/blogs"
  end

end
