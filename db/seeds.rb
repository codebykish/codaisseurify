Artist.destroy_all
Song.destroy_all

artist_1 = Artist.create!(artist_name: "Wu-Tang", age:40, bio:"Wu-Tang makes songs.")
artist_2 = Artist.create!(artist_name: "ODB", age:35, bio:"ODB makes songs.")
artist_3 = Artist.create!(artist_name: "Rza", age:18, bio:"Rza makes songs.")
artist_4 = Artist.create!(artist_name: "Gza", age:34, bio:"Gza makes songs.")
artist_5 = Artist.create!(artist_name: "Ghostface", age:47, bio:"Ghostface makes songs.")
artist_6 = Artist.create!(artist_name: "Method Man", age:55, bio:"Method Man makes songs.")

song_1 = Song.create!(song_name: "Happy", artist: artist_1)
song_2 = Song.create!(song_name: "Sad", artist: artist_1)
song_3 = Song.create!(song_name: "Yellow", artist: artist_3)
song_4 = Song.create!(song_name: "Blue", artist: artist_3)
song_5 = Song.create!(song_name: "Green", artist: artist_5)
song_6 = Song.create!(song_name: "Brown", artist: artist_5)
song_7 = Song.create!(song_name: "Black", artist: artist_6)
song_8 = Song.create!(song_name: "Estatic", artist: artist_2)
song_9 = Song.create!(song_name: "Red", artist: artist_2)
song_10 = Song.create!(song_name: "Purple", artist: artist_2)
song_11 = Song.create!(song_name: "Not Sure", artist: artist_4)
