json.extract! venue, :id, :name, :location, :notes, :created_at, :updated_at
json.url venue_url(venue, format: :json)
