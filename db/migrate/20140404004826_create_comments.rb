class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type
      t.integer :vote_count
      t.belongs_to :user
      t.timestamps
    end
  end
end
