class CreateAcomments < ActiveRecord::Migration
  def change
    create_table :acomments do |t|
      t.text :content

      t.timestamps
    end
  end
end
