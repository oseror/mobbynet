class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def edit
    @user=User.find(current_user)
  end

  def update
    p"-----------------------------------"
    p params
    @user=User.find(current_user)
    if @user.update_attributes(params[:user])
      flash[:notice]="Successfully updated"
      redirect_to edit_user_path(current_user)
    else
    end
    p"-----------------------------------"
  end

  def delete
  end

  def create
    p"-----------------------------------"
    p params
    
    p"-----------------------------------"
    ddfd
  end
end