class Message < ActiveRecord::Base
  attr_accessible :description, :user_id
  belongs_to :user
  default_scope order('created_at DESC')
end
