class CreateSetlistSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :setlist_songs do |t|
      t.references :setlist, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
