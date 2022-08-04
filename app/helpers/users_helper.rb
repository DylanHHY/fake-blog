module UsersHelper
  def current_user
    User.find_by(id: session[:user_session])
  end
  
  def user_signed_in?
    session[:user_session] && current_user
  end 
end
