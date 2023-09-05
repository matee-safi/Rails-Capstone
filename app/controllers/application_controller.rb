class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.first
  end

  def after_sign_in_path_for(_resource)
    foods_path
  end
end
