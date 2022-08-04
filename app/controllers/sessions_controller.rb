class SessionsController < ApplicationController
  def create
    user = User.login(params[:user])
    hashed_password = Digest::SHA1.hexdigest("xx----#{params[:user][:password]}-y--y")
    user = User.find_by(
      email: params[:user][:email],
      password: hashed_password
    )

    if user
      session[:user_session] = user.id
      redirect_to "/", notice: "登入成功"
    else
      # render html: user
      redirect_to "/users/sign_in", notice: "登入失敗"
    end
  end

  def destroy
    session[:user_session] = nil
    redirect_to "/", notice: "已登出"
  end
end
