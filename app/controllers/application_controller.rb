class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  helper_method :current_user, :user_signed_in?

  private
    def record_not_found
      # redirect_to "/"
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    end

    def current_user
      @_user ||=  User.find_by(id: session[:user_session])
    end
    
    def user_signed_in?
      session[:user_session] && current_user
    end 

    def require_login
      redirect_to sign_in_users_path if not user_signed_in?
    end
end
