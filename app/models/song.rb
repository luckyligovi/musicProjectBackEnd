class Song < ActiveRecord::Base
    has_many :reviews
    belongs_to :artist
    belongs_to :album 
    belongs_to :genre
  def artist_name 
    self.artist.full_name
 end
 def album_name
    self.album.name
 end
 def genre_name
    self.genre.name
 end
end