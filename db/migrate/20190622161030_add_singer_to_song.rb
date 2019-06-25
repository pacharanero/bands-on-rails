class AddSingerToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :singer, :string
  end
end
