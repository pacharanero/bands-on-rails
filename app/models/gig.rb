class Gig < ApplicationRecord
  belongs_to :venue
  belongs_to :set_list
end
