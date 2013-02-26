class ApplicationController < ActionController::Base
  protect_from_forgery
  include SimpleCaptcha::ControllerHelpers
  #  before_filter :authenticate_user!, :except =>"home"


  #  def after_sign_in_path_for(resource)
  #
  #    users_path
  #  end

end
