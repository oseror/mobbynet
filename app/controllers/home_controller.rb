class HomeController < ApplicationController
  def index
  end

  def registration
    p "params: #{params[:registration_type]}"
    if request.xhr?
      @user = User.new
      respond_to do |format|
        format.js { render :layout=>false }
      end
    end
  end
end
