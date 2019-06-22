class SetList < ApplicationRecord
  has_many :songs, through: :setlist_songs
  has_many :setlist_songs

  belongs_to :venue
end
