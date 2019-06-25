class AddGenreToSongs < ActiveRecord::Migration[5.2]
  change_table :songs do |t|
    t.string :genre
    t.string :tags
  end
end
