class CreateJoinTableSetListsSongs < ActiveRecord::Migration[5.2]
  def change
    create_join_table :set_lists, :songs do |t|
      t.index [:set_list_id, :song_id]
      t.index [:song_id, :set_list_id]
    end
  end
end
