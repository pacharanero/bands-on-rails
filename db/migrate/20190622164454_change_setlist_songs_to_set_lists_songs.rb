class ChangeSetlistSongsToSetListsSongs < ActiveRecord::Migration[5.2]
  def change
    rename_table :setlist_songs, :set_lists_songs
  end
end
