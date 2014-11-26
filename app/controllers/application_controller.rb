class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #the line underneath redirects autmatically to login
  #acts_as_token_authentication_handler_for User
end
