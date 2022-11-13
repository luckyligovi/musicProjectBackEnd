class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Add your routes here
 # get '/' do 
    
 # end
  get "/songs" do
    songs = Song.all
    songs.to_json
    # (include: [:albums, :artists, :genres, :reviews])
  end
  get '/songs/:id' do
    song = Song.find(params[:id])
    song.to_json
    # (include: [:albums, :artists, :genres, :reviews])
  end
  # method to delete song item
  delete '/songs/:id' do
    song = Song.find(params[:id])
    song.destroy
    # (include: [:albums, :artists, :genres, :reviews])
  end

  # method to handle a post request
  post '/songs' do 
   Song.create(
    id: params[:id],
    title:params[:title],
    description:params[:description],
    img_url:params[:img_url],
    artist_id: params[:artist_id],
    genre_id: params[:genre_id],
    album_id: params[:album_id]
  )
    redirect "/songs" 

  end

  # Artist methods 
  get "/artists" do
    artists = Artist.all
    artists.to_json
    # (include: [:albums, :artists, :genres, :reviews])
  end
  get '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.to_json
    # (include: [:albums, :artists, :genres, :reviews])
  end
  # method to delete song item
  delete '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.destroy
    # (include: [:albums, :artists, :genres, :reviews])
  end

  # method to handle a post request
  post '/artists' do 
   Artist.create(full_name:params[:full_name])
    redirect "/artists" 

  end
  #Genre methods
  get "/genres" do
    genres = Genre.all
    genres.to_json
    # (include: [:albums, :artists, :genres, :reviews])
  end
  get '/genres/:id' do
    genre = Genre.find(params[:id])
    genre.to_json
    # (include: [:albums, :artists, :genres, :reviews])
  end
  # method to delete song item
  delete '/genres/:id' do
    genre = Genre.find(params[:id])
    genre.destroy
    # (include: [:albums, :artists, :genres, :reviews])
  end

  # method to handle a post request
  post '/genres' do 
   Genre.create(name:params[:name])
    redirect "/genres" 

  end
  #Album methods
  get "/albums" do
    albums = Album.all
    albums.to_json
    # (include: [:albums, :artists, :genres, :reviews])
  end
  get '/albums/:id' do
    album = Album.find(params[:id])
    album.to_json
    # (include: [:albums, :artists, :genres, :reviews])
  end
  # method to delete song item
  delete '/albums/:id' do
    album = Album.find(params[:id])
    album.destroy
    # (include: [:albums, :artists, :genres, :reviews])
  end

  # method to handle a post request
  post '/albums' do 
   Album.create(name:params[:name])
    redirect "/albums" 

  end
#Review methods
get "/reviews" do
  reviews = Review.all
  reviews.to_json
  # (include: [:albums, :artists, :genres, :reviews])
end
get '/reviews/:id' do
  review = Review.find(params[:id])
  review.to_json
  # (include: [:albums, :artists, :genres, :reviews])
end
# method to delete song item
delete '/reviews/:id' do
  review = Review.find(params[:id])
  review.destroy
  # (include: [:albums, :artists, :genres, :reviews])
end

# method to handle a post request
post '/reviews' do 
 Review.create(
  rating:params[:rating],
  song_id:song.id,
  comment:params[:comment]
)
  redirect "/reviews" 
end

end