# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Band.destroy_all
  Genre.destroy_all
  User.destroy_all

rock = Genre.create(name:"rock")
funk = Genre.create(name:"funk")
alternative = Genre.create(name:"alternative")
psychedelic = Genre.create(name:"psychedelic")
genres = Genre.all

user1 = User.create(email: "test1@example.com", password: "123456789", name: Faker::FunnyName.name)
user2 = User.create(email: "test2@example.com", password: "123456789", name: Faker::FunnyName.name)
user3 = User.create(email: "test3@example.com", password: "123456789", name: Faker::FunnyName.name)
user4 = User.create(email: "test4@example.com", password: "123456789", name: Faker::FunnyName.name)
users = User.all

band1 = Band.create(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT")
band1.genre = genres.sample
band1.user = users.sample
band2 = Band.create(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT")
band2.genre = genres.sample
band2.user = users.sample
band3 = Band.create(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT")
band3.genre = genres.sample
band3.user = users.sample
band4 = Band.create(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT")
band4.genre = genres.sample
band4.user = users.sample
bands = Band.all
