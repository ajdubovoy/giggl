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
  Gig.destroy_all

rock = Genre.create(name:"rock")
funk = Genre.create(name:"funk")
alternative = Genre.create(name:"alternative")
psychedelic = Genre.create(name:"psychedelic")
genres = Genre.all

user1 = User.create(email: "emily@emily.com", password: "123456789", name: "Emily Rhodes")
user2 = User.create(email: "someoneelse@haha.com", password: "123456789", name: "Night Club Killer")
user3 = User.create(email: "oriane@oriane.com", password: "123456789", name: "Oriane Millet")
user4 = User.create(email: "alex@alex.com", password: "123456789", name: "Alexander Dubovoy")
users = User.all

band1 = Band.create(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "Mistar Anderson", address: "Berlin")
band1.genre = genres.sample
band1.user = users.sample
band2 = Band.create(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT", address: "Columbus, Ohio")
band2.genre = genres.sample
band2.user = users.sample
band3 = Band.create(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "Booty & the kidd", address: "Berlin")
band3.genre = genres.sample
band3.user = users.sample
band4 = Band.create(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "Stephen King", address: "Berlin")
band4.genre = genres.sample
band4.user = users.sample
bands = Band.all

venue1 = Venue.create(name: "Dirty Dicks", address: "202 Bishopsgate, London EC2M 4NR", telephone: "+44 20 7283 5888", email: "dirty@dicks.com", description: "3-floor pub with wood panelling", website: "http://www.dirtydicks.co.uk", user: User.all.sample)
venue2 = Venue.create(name: "Taranino's Bar", address: "Brunnenstraße 163, Berlin", telephone: "+49 30 40500355", email: "tarantino@feet.com", description: "footwear optional", website: "http://tarantinos-bar.de", user: User.all.sample)
venue3 = Venue.create(name: "Le Titty Twister", address: "5 Rue de Berri, 75008 Paris", telephone: "+33 1 45 62 50 23", email: "titties@doubleD.com", description: "sun's out", website: "http://www.letittytwister.com", user: User.all.sample)
venue4 = Venue.create(name: "Donau115", address: "Donaustraße 115, 12043 Berlin", telephone: "+49 0179 1809168", email: "alex@rules.com", description: "the gitmeister played there", website: "http://donau115.de", user: User.all.sample)
venues = Venue.all

gig1 = Gig.create(address: "London", paid: true, description: "Tuesdays at Dirty Dicks is bringing you live music - to our new Side Stage. We are also featuring $1 off Pacifico, Modelo, and Ballast Point!", other_bands: "Mistar Anderson, Josh Hill", url: "https://www.facebook.com/events/1109582902525113/", name: "Tuesdays @ Dirty Dicks", date: '09/09/18', time: '20:30')
gig1.genre = genres.sample
gig1.organizer = venue1
gig2 = Gig.create(address: "Berlin", paid: true, description: "We need an opener for our EP release show", other_bands: "TATTAT", url: "https://www.facebook.com/events/1109582902525113/", name: "TATTAT EP release show", date: '09/09/18', time: '20:30')
gig2.genre = genres.sample
gig2.organizer = band1
gig3 = Gig.create(address: "Donaustraße 115, 12043 Berlin", paid: true, description: "Live music act wanted saturday pm", other_bands: "Mistar Anderson, Josh Hill", url: "https://www.facebook.com/events/1109582902525113/", name: "Tuesdays @ Dirty Dicks", date: '09/09/18', time: '20:30')
gig3.genre = genres.sample
gig3.organizer = venue4
gig4 = Gig.create(address: "Columbus", paid: false, description: "Come play a house show with us", other_bands: "Mistar Anderson, Josh Hill", url: "https://www.facebook.com/events/1109582902525113/", name: "House show @ Misfit Manor", date: '09/09/18', time: '20:30')
gig4.genre = genres.sample
gig4.organizer = bands.sample
gigs = Gig.all




