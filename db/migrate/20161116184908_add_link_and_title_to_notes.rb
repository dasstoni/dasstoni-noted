class AddLinkAndTitleToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :title, :string
    add_column :notes, :url, :string
  end
end
