class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.integer :no_played
      t.boolean :on_list
      t.references :songs, index: true, foreign_key: true
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
