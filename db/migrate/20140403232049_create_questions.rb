class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :content
      t.integer :vote_count
      t.belongs_to :user
      t.timestamps
    end
  end
end
