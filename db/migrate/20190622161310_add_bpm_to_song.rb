class AddBpmToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :bpm, :integer
  end
end
