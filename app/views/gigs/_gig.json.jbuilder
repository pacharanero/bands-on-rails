json.extract! gig, :id, :venue_id, :set_list_id, :notes, :fee, :paid, :created_at, :updated_at
json.url gig_url(gig, format: :json)
