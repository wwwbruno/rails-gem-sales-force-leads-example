class ApplicationController < ActionController::Base
  helper_method :access_token

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def access_token
      @access_token ||= session[:access_token] if session[:access_token]
    end

    def authenticate_user!
    	redirect_to root_url, :alert => "You are not logged in!" unless access_token
    end
end
