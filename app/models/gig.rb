class Gig < ApplicationRecord
  has_one :set_list
  has_one :venue
end
