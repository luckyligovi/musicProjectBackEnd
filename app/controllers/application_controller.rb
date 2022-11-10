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
   Song.create(params)
    redirect "/songs" 

  end
end