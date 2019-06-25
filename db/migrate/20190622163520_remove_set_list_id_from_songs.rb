class RemoveSetListIdFromSongs < ActiveRecord::Migration[5.2]
  def change
    remove_column :songs, :setlist_id, :integer
  end
end
