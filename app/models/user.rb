class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :provider, :uid, :avatar,:email, :password, :password_confirmation, :remember_me,  :username, :age, :sex, :base_location, :real_name,:user,:user_file_name,:user_content_type,:user_file_size
  # attr_accessible :title, :body
  has_attached_file :avatar,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename",
    :styles => { :medium => "300x300>", :thumb => "100x100>" }

  has_many :events
  devise :omniauthable, :omniauth_providers => [:facebook]
 
end
