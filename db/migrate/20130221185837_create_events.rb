class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :type
      t.string :start_time
      t.string :end_time
      t.string :host
      t.string :location
      t.integer :category_id
      t.string :comments
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size

      t.timestamps
    end
  end
end
