json.extract! song, :id, :title, :video_url, :chart_url, :setlist_id, :performance_notes, :key, :duration, :created_at, :updated_at
json.url song_url(song, format: :json)
