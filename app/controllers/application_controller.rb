class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_user
  def get_user
    @user = User.where(id: session[:user_id]).as_json[0]
  end
end
