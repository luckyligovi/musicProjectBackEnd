class Song < ActiveRecord::Base
    has_many :reviews
    belongs_to :artist
    belongs_to :album 
    belongs_to :genre
   
end