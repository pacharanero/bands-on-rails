class ChangeSetListId < ActiveRecord::Migration[5.2]
  def change
    remove_column :set_lists_songs, :setlist_id, :integer
  end
end
