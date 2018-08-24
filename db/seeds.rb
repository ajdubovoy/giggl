# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying old seeds...'

Photo.destroy_all
Booking.destroy_all
Gig.destroy_all
Venue.destroy_all
Band.destroy_all
Genre.destroy_all
User.destroy_all

puts 'Creating genres...'

rock = Genre.create!(name:"Rock")
funk = Genre.create!(name:"Funk")
alternative = Genre.create!(name:"Alternative")
psychedelic = Genre.create!(name:"Psychedelic")
genres = Genre.all

puts 'Creating users...'

user1 = User.create!(email: "emily@emily.com", password: "123456789", name: "Emily Rhodes")
user2 = User.create!(email: "someoneelse@haha.com", password: "123456789", name: "Night Club Killer")
user3 = User.create!(email: "oriane@oriane.com", password: "123456789", name: "Oriane Millet")
user4 = User.create!(email: "alex@alex.com", password: "123456789", name: "Alexander Dubovoy")
users = User.all

puts 'Creating bands...'

bandurls = ["https://images.pexels.com/photos/756239/pexels-photo-756239.jpeg?cs=srgb&dl=band-concert-festival-756239.jpg&fm=jpg", "https://images.pexels.com/photos/210887/pexels-photo-210887.jpeg?cs=srgb&dl=adult-artist-artists-210887.jpg&fm=jpg", "https://images.pexels.com/photos/157642/girl-guitar-photo-people-157642.jpeg?cs=srgb&dl=beautiful-black-and-white-classical-guitar-157642.jpg&fm=jpg", "https://images.pexels.com/photos/1327426/pexels-photo-1327426.jpeg?cs=srgb&dl=artist-band-drummer-1327426.jpg&fm=jpg"]

band1 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "Mistar Anderson", address: "Berlin")
band1.genre = genres.sample
band1.user = users.sample
photo1 = Photo.new
photo1.remote_photo_url = bandurls.sample
photo1.profile = band1
photo1.save!
band1.save!
band2 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT", address: "Columbus, Ohio")
band2.genre = genres.sample
band2.user = users.sample
photo2 = Photo.new
photo2.remote_photo_url = bandurls.sample
photo2.profile = band2
photo2.save!
band2.save!
band3 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT", address: "Berlin")
band3.genre = genres.sample
band3.user = users.sample
photo3 = Photo.new
photo3.remote_photo_url = bandurls.sample
photo3.profile = band3
photo3.save!
band4 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "Stephen King", address: "Berlin")
band4.genre = genres.sample
band4.user = users.sample
photo4 = Photo.new
photo4.remote_photo_url = bandurls.sample
photo4.profile = band4
photo4.save!
band4.save!
bands = Band.all

puts 'Creating venues...'

venueurls = ["https://images.pexels.com/photos/1267265/pexels-photo-1267265.jpeg?cs=srgb&dl=adult-bar-beer-1267265.jpg&fm=jpg", "https://images.pexels.com/photos/260922/pexels-photo-260922.jpeg?cs=srgb&dl=alcohol-architecture-bar-260922.jpg&fm=jpg", "https://images.pexels.com/photos/769153/pexels-photo-769153.jpeg?cs=srgb&dl=business-chairs-city-769153.jpg&fm=jpg", "https://images.pexels.com/photos/1154189/pexels-photo-1154189.jpeg?cs=srgb&dl=celebration-concert-crowd-1154189.jpg&fm=jpg"]

venue1 = Venue.new(name: "Dirty Dicks", address: "202 Bishopsgate, London EC2M 4NR", telephone: "+44 20 7283 5888", email: "dirty@dicks.com", description: "3-floor pub with wood panelling", website: "http://www.dirtydicks.co.uk", user: User.all.sample)
venue_photo1 = Photo.new
venue_photo1.remote_photo_url = venueurls.sample
venue_photo1.profile = venue1
venue_photo1.save!
venue1.save!
venue2 = Venue.new(name: "Taranino's Bar", address: "Brunnenstraße 163, Berlin", telephone: "+49 30 40500355", email: "tarantino@feet.com", description: "footwear optional", website: "http://tarantinos-bar.de", user: User.all.sample)
venue_photo2 = Photo.new
venue_photo2.remote_photo_url = venueurls.sample
venue_photo2.profile = venue2
venue_photo2.save!
venue2.save!
venue3 = Venue.new(name: "Le Titty Twister", address: "5 Rue de Berri, 75008 Paris", telephone: "+33 1 45 62 50 23", email: "titties@doubleD.com", description: "sun's out", website: "http://www.letittytwister.com", user: User.all.sample)
venue_photo3 = Photo.new
venue_photo3.remote_photo_url = venueurls.sample
venue_photo3.profile = venue3
venue_photo3.save!
venue3.save!
venue4 = Venue.new(name: "Donau115", address: "Donaustraße 115, 12043 Berlin", telephone: "+49 0179 1809168", email: "alex@rules.com", description: "the gitmeister played there", website: "http://donau115.de", user: User.all.sample)
venue_photo4 = Photo.new
venue_photo4.remote_photo_url = venueurls.sample
venue_photo4.profile = venue4
venue_photo4.save!
venues = Venue.all

puts 'Creating gigs...'


gigurls = ["https://images.pexels.com/photos/196652/pexels-photo-196652.jpeg?cs=srgb&dl=applause-audience-band-196652.jpg&fm=jpg", "https://images.pexels.com/photos/1047442/pexels-photo-1047442.jpeg?cs=srgb&dl=audience-band-bright-1047442.jpg&fm=jpg", "https://images.pexels.com/photos/167636/pexels-photo-167636.jpeg?cs=srgb&dl=applause-audience-band-167636.jpg&fm=jpg", "https://images.pexels.com/photos/342520/pexels-photo-342520.jpeg?cs=srgb&dl=adults-audience-band-342520.jpg&fm=jpg"]

gig1 = Gig.new(address: "London", paid: true, description: "Tuesdays at Dirty Dicks is bringing you live music - to our new Side Stage. We are also featuring $1 off Pacifico, Modelo, and Ballast Point!", other_bands: "Mistar Anderson, Josh Hill", url: "https://www.facebook.com/events/1109582902525113/", name: "Tuesdays @ Dirty Dicks", date: '09/09/18', time: '20:30')
gig1.genre = genres.sample
gig1.organizer = venue1
gig_photo1 = Photo.new
gig_photo1.remote_photo_url = gigurls.sample
gig_photo1.profile = gig1
gig_photo1.save!
gig1.save!
gig2 = Gig.new(address: "Berlin", paid: true, description: "We need an opener for our EP release show", other_bands: "TATTAT", url: "https://www.facebook.com/events/1109582902525113/", name: "TATTAT EP release show", date: '09/09/18', time: '20:30')
gig2.genre = genres.sample
gig2.organizer = band1
gig_photo2 = Photo.new
gig_photo2.remote_photo_url = gigurls.sample
gig_photo2.profile = gig2
gig_photo2.save!
gig2.save!
gig3 = Gig.new(address: "Donaustraße 115, 12043 Berlin", paid: true, description: "Live music act wanted saturday pm", other_bands: "Mistar Anderson, Josh Hill", url: "https://www.facebook.com/events/1109582902525113/", name: "Tuesdays @ Dirty Dicks", date: '09/09/18', time: '20:30')
gig3.genre = genres.sample
gig3.organizer = venue4
gig_photo3 = Photo.new
gig_photo3.remote_photo_url = gigurls.sample
gig_photo3.profile = gig3
gig_photo3.save!
gig3.save!
gig4 = Gig.new(address: "Columbus", paid: false, description: "Come play a house show with us", other_bands: "Mistar Anderson, Josh Hill", url: "https://www.facebook.com/events/1109582902525113/", name: "House show @ Misfit Manor", date: '09/09/18', time: '20:30')
gig4.genre = genres.sample
gig4.organizer = bands.sample
gig_photo4 = Photo.new
gig_photo4.remote_photo_url = gigurls.sample
gig_photo4.profile = gig4
gig_photo4.save!
gig4.save!
gigs = Gig.all

puts 'Finished!'
