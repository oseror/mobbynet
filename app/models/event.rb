class Event < ActiveRecord::Base
  attr_accessible :street,:city,:country,:avatar,:avatar_content_type, :avatar_file_name, :avatar_file_size, :category_id, :comments, :description, :end_time, :host, :location, :name, :start_time, :type
  belongs_to :user
  has_attached_file :avatar,
    :styles => {
    :thumb  => "100x100",
    :medium => "200x200",
    :large => "600x400"
}
acts_as_gmappable
def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  "#{self.street}, #{self.city}, #{self.country}"
end
end
