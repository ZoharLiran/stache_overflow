class CreateQcomments < ActiveRecord::Migration
  def change
    create_table :qcomments do |t|
      t.text :content
      t.integer :question_id
      t.timestamps
    end
  end
end
