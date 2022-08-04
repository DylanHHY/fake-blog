class BlogsController < ApplicationController
  include UsersHelper
  before_action :require_login, only: [:new]

  def index
    @articles = Article.all
    
  end

  def new
    if  user_signed_in?
      @article = Article.new
    else
      redirect_to sign_in_users_path
    end
  end


  def create
    # 寫入資料庫
    # render html: "已成功新增"
    # redirect_to "/blogs"
    render html: params.class
    # render html:params[:content]
  end

end
