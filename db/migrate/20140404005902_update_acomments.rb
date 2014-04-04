class UpdateAcomments < ActiveRecord::Migration
  def change
    add_column :acomments, :answer_id, :integer
  end
end
