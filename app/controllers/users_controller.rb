class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user=User.find(current_user)
  end

  def show
    @user=User.find(current_user)
  end

  def update
    @user=User.find(current_user)
    if @user.update_attributes(params[:user])
      flash[:notice]="Successfully updated"
      redirect_to edit_user_path(current_user)
    else
    end
  end

  def delete
  end

  def create
  end

  def destroy
    redirect_to destroy_user_session_path, :method => 'DELETE'
  end
end
