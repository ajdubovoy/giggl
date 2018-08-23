# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Venue.destroy_all
  Band.destroy_all
  Genre.destroy_all
  User.destroy_all

rock = Genre.create!(name:"rock")
funk = Genre.create!(name:"funk")
alternative = Genre.create!(name:"alternative")
psychedelic = Genre.create!(name:"psychedelic")
genres = Genre.all

user1 = User.create!(email: "emily@emily.com", password: "123456789", name: "Emily Rhodes")
user2 = User.create!(email: "someoneelse@haha.com", password: "123456789", name: "Night Club Killer")
user3 = User.create!(email: "oriane@oriane.com", password: "123456789", name: "Oriane Millet")
user4 = User.create!(email: "alex@alex.com", password: "123456789", name: "Alexander Dubovoy")
users = User.all

band1 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT", address: "Berlin")
band1.genre = genres.sample
band1.user = users.sample
band1.save!
band2 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT", address: "Columbus, Ohio")
band2.genre = genres.sample
band2.user = users.sample
band2.save!
band3 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT", address: "Berlin")
band3.genre = genres.sample
band3.user = users.sample
band3.save!
band4 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT", address: "Berlin")
band4.genre = genres.sample
band4.user = users.sample
band4.save!
bands = Band.all

venue1 = Venue.create!(name: "Dirty Dicks", address: "202 Bishopsgate, London EC2M 4NR", telephone: "+44 20 7283 5888", email: "dirty@dicks.com", description: "3-floor pub with wood panelling", website: "http://www.dirtydicks.co.uk", user: User.all.sample)
venue2 = Venue.create!(name: "Taranino's Bar", address: "Brunnenstraße 163, Berlin", telephone: "+49 30 40500355", email: "tarantino@feet.com", description: "footwear optional", website: "http://tarantinos-bar.de", user: User.all.sample)
venue3 = Venue.create!(name: "Le Titty Twister", address: "5 Rue de Berri, 75008 Paris", telephone: "+33 1 45 62 50 23", email: "titties@doubleD.com", description: "sun's out", website: "http://www.letittytwister.com", user: User.all.sample)
venue4 = Venue.create!(name: "Donau115", address: "Donaustraße 115, 12043 Berlin", telephone: "+49 0179 1809168", email: "alex@rules.com", description: "the gitmeister played there", website: "http://donau115.de", user: User.all.sample)
venues = Venue.all



