class AddIndexToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :topic_id, :integer
    add_index :notes, :topic_id
  end
end
