class Event < ActiveRecord::Base
  attr_accessible :avatar_content_type, :avatar_file_name, :avatar_file_size, :category_id, :comments, :description, :end_time, :host, :location, :name, :start_time, :type
  belongs_to :user
end
