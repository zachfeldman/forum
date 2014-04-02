class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :title
      t.text :body
      t.integer :topic_id
      t.integer :user_id

      t.timestamps
    end
  end
end
