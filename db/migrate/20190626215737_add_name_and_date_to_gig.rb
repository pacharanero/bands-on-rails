class AddNameAndDateToGig < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :name, :string
    add_column :gigs, :date, :datetime
  end
end
