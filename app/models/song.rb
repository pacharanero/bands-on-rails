class Song < ApplicationRecord
  has_and_belongs_to_many :set_lists
end
