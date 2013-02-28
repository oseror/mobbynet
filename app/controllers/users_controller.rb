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

  def image_update
    @user=User.find(current_user)
    @user.update_attributes(:params[:avatar])
    redirect_to user_path(current_user)
  end

  def new_event
  @event=Event.new
  end
  def create_event
    p"========================"
    p params
    @user=User.find(current_user)
    @event =@user.events.build(params[:event])
    @event.save

    redirect_to '/'
  end
end
