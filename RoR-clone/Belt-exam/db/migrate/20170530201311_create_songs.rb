class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :author
      t.string :title
      t.references :playlists, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
