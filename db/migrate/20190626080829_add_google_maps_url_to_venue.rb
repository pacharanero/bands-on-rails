class AddGoogleMapsUrlToVenue < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :google_maps_url, :string
  end
end
