class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Make Devise redirect after successful login
  def after_sign_in_path_for(user)
    recipes_path
  end
end
