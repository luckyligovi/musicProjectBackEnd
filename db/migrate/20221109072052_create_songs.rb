class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :description
      t.string :img_url
      t.integer :artist_id
      t.integer :genre_id
      t.integer :album_id
    end
  end
end
