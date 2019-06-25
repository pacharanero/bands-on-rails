class RemoveSetListSongs < ActiveRecord::Migration[5.2]
  def up
    drop_table :set_lists_songs
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
