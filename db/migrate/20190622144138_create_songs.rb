class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :video_url
      t.string :chart_url
      t.references :setlist, foreign_key: true
      t.string :performance_notes
      t.string :key
      t.string :duration

      t.timestamps
    end
  end
end
