puts "🌱 Seeding spices..."

# Seed your database here
Album.destroy_all
Artist.destroy_all
Genre.destroy_all
Review.destroy_all
Song.destroy_all

puts "Creating albums..."
superstar = Album.create(name: "Superstar" )
sip = Album.create(name: "Sip (Alcohol)" )
sukari = Album.create(name: "Sukari" )
utawezana = Album.create(name: "Utawezana")


puts "Creating artists..."
joeboy = Artist.create(full_name: "Joeboy")
mejja = Artist.create(full_name: "Mejja Okonkwo")
diamond = Artist.create(full_name: "Diamond Platnumz")
zuchu = Artist.create(full_name: "Zuchu")


puts "Creating genres..."
bongo = Genre.create(name: "Bongo")
nigerian = Genre.create(name: "Nigerian")
genge = Genre.create(name: "Genge")

puts "Creating songs..."

song1 = Song.create(title: "Superstar", description: "Costa Titch and Diamond Platnumz", img_url: "https://i0.wp.com/xclusiveloaded.com/wp-content/uploads/2022/10/Superstar.jpg?fit=854%2C480&ssl=1", artist_id: diamond.id , genre_id: nigerian.id , album_id: superstar.id)
song2 = Song.create(title: "Sip (Alcohol)", description: "Song by Joeboy" , img_url: "https://www2.beatzjam.com/wp-content/uploads/2021/10/0-31.jpg", artist_id: joeboy.id, genre_id: nigerian.id, album_id: sip.id)
song3 = Song.create(title: "Sukari", description: "Song by Zuchu", img_url: "https://bekaboy.com/wp-content/uploads/2021/01/Sukari-VIDEO-640x321.jpg", artist_id: zuchu.id, genre_id: bongo.id, album_id: sukari.id)
song4 = Song.create(title: "Utawezana", description: "Femi One X Mejja", img_url: "https://notjustok.com/eastafrica/wp-content/uploads/sites/3/2020/04/Femi-One-ft.-Mejja-Utawezana.png", artist_id: mejja.id, genre_id: genge.id, album_id: utawezana.id)




puts "Creating reviews..."
Review.create(rating: 4, song_id: song1.id, comment: "Very good music!")
Review.create(rating: 2, song_id: song2.id, comment: "No mesage at all")
Review.create(rating: 3, song_id: song3.id, comment: "Just average")
Review.create(rating: 4, song_id: song4.id, comment: "I like the choise of words")
Review.create(rating: 5, song_id: song1.id, comment: "That's my song")
Review.create(rating: 2, song_id: song2.id, comment: "Poor quality video")
Review.create(rating: 1, song_id: song3.id, comment: "Hell no, I could rate 0")
Review.create(rating: 2, song_id: song4.id, comment: "Who is this?")
Review.create(rating: 3, song_id: song4.id, comment: "Good music")
Review.create(rating: 4, song_id: song3.id, comment: "I can listen all day")
Review.create(rating: 3, song_id: song2.id, comment: "Was a hit back then")
Review.create(rating: 1, song_id: song1.id, comment: "Terrible")
Review.create(rating: 2, song_id: song2.id, comment: "I had to mute")
Review.create(rating: 5, song_id: song1.id, comment: "I listen every day")
Review.create(rating: 1, song_id: song1.id, comment: "What is this?")




puts "✅ Done seeding!"
