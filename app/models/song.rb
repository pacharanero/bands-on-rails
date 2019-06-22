class Song < ApplicationRecord
  has_many :set_lists, through: :setlist_songs
  has_many :setlist_songs
  belongs_to :setlist
end
