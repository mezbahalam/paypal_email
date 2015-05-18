class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_http_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == "tone" && password == "musictshirts1"
    end
  end



end
