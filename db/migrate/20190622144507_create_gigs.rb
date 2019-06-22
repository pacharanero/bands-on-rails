class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.references :venue, foreign_key: true
      t.references :set_list, foreign_key: true
      t.string :notes
      t.integer :fee
      t.boolean :paid

      t.timestamps
    end
  end
end
