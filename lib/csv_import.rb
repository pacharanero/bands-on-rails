class ImportSongsCSV
  include CSVImporter

  model Song

  column :genre
  column :title
  column :key
  column :singer
  column :performance_notes, as: ["Performance Notes"]
  column :video_url, as: ["video"]
  column :chart_url, as: ["chart"]
  column :bpm
  column :tags, as: ["status"]

  identifier :title
end
