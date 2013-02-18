class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :real_name, :string
    add_column :users, :age, :integer
    add_column :users, :sex, :string
    add_column :users, :base_location, :string
    add_column :users, :user_file_name, :string
    add_column :users, :user_content_type, :string
    add_column :users, :user_file_size, :string
  end
end
