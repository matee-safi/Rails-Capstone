class ApplicationController < ActionController::Base
 
  def after_sign_in_path_for(_resource)
    foods_path
  end
end
