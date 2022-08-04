class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found


  private
    def record_not_found
      # redirect_to "/"
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    end
    
    def current_user
      User.find_by(id: session[:user_session])
    end
    
    def user_signed_in?
      session[:user_session] && current_user
    end 
end
