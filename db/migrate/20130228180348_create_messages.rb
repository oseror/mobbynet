class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
