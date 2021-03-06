# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying old seeds...'

Mailboxer::Message.destroy_all
Mailboxer::Conversation.destroy_all
Review.destroy_all
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
reggae = Genre.create!(name:"Reggae")
metal = Genre.create!(name:"Metal")
punk = Genre.create!(name:"Punk")
rnb = Genre.create!(name:"R&B")
techno = Genre.create!(name:"Techno")
genres = Genre.all

puts 'Creating users...'

user1 = User.create!(email: "emily@emily.com", password: "123456789", name: "Emily Rhodes")
user2 = User.create!(email: "thewalrus@music.com", password: "123456789", name: "The Walrus")
user3 = User.create!(email: "rich@lewagon.com", password: "123456789", name: "Rich @ LeWagon")
user4 = User.create!(email: "alex@alex.com", password: "123456789", name: "Alexander Dubovoy")
users = User.all

puts 'Creating bands...'

bandurls = ["https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/35646191_195226281049784_8394434294935715840_n.jpg?_nc_cat=0&oh=bdb05cd8061097b2f59f740558af6a6d&oe=5BF50F83", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/37807780_222380181667727_793933354729734144_n.jpg?_nc_cat=0&oh=21b4ee3a0241541fd3b54e250420b802&oe=5BECCB1B", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/36188670_199705923935153_69291416055971840_n.jpg?_nc_cat=0&oh=c9117bac57ff74add680f6881d74af1f&oe=5BF7796C"]

band1 = Band.new(bio: "A combination of soul, funk, and alternative stylings, embedded in contemporary experimentation", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "TATTAT", address: "Berlin")
band1.genre = genres.sample
band1.user = user1
photo1 = Photo.new
photo1.remote_photo_url = bandurls[2]
photo1.profile = band1
photo1.save!
band1.save!
band2 = Band.new(bio: "crunchy drums layered with decadent melodies and covered in overdriven guitars with a nougaty bass center", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "MoJoFlo", address: "Columbus, Ohio")
band2.genre = genres.sample
band2.user = users.sample
photo2 = Photo.new
photo2.remote_photo_url = bandurls[1]
photo2.profile = band2
photo2.save!
band2.save!
band3 = Band.new(bio: "crunchy drums layered with decadent melodies and covered in overdriven guitars with a nougaty bass center", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "Hello Luna", address: "Berlin")
band3.genre = genres.sample
band3.user = users.sample
photo3 = Photo.new
photo3.remote_photo_url = bandurls[0]
photo3.profile = band3
photo3.save!
band4 = Band.new(bio: "crunchy drums layered with decadent melodies and covered in overdriven guitars with a nougaty bass center", website: "www.tattatband.com", spotify: "www.spotify.com", bandcamp: "www.bandcamp.com", facebook: "www.facebook.com/tattatband", instagram: "https://www.instagram.com/tattat_band/?hl=en", twitter: "www.twitter.com", youtube: "www.youtube.com", vimeo: "www.vimeo.com", name: "Stephen King", address: "Berlin")
band4.genre = genres.sample
band4.user = users.sample
photo4 = Photo.new
photo4.remote_photo_url = bandurls[1]
photo4.profile = band4
photo4.save!
band4.save!
bands = Band.all

puts 'Creating venues...'

venueurls = ["https://images.pexels.com/photos/1267265/pexels-photo-1267265.jpeg?cs=srgb&dl=adult-bar-beer-1267265.jpg&fm=jpg", "https://images.pexels.com/photos/260922/pexels-photo-260922.jpeg?cs=srgb&dl=alcohol-architecture-bar-260922.jpg&fm=jpg", "https://images.pexels.com/photos/769153/pexels-photo-769153.jpeg?cs=srgb&dl=business-chairs-city-769153.jpg&fm=jpg", "https://images.pexels.com/photos/1154189/pexels-photo-1154189.jpeg?cs=srgb&dl=celebration-concert-crowd-1154189.jpg&fm=jpg"]

venue1 = Venue.new(name: "The Walrus", address: "Gneisenaustraße 63, 10961 Berlin", telephone: "+44 20 7283 5888", email: "thewalrus@music.com", description: "Live-music performances on 2 stages, plus draft beer, cocktails, eclectic pub food", website: "http://www.thewalruscolumbus.com/", user: user4)
venue_photo1 = Photo.new
venue_photo1.remote_photo_url = venueurls.sample
venue_photo1.profile = venue1
venue_photo1.save!
venue1.save!
venue2 = Venue.new(name: "Kit Kat club", address: "Donaustraße 110, 12043 Berlin", telephone: "+49 30 40500355", email: "kit@kat.com", description: "Clothing optional", website: "http://tarantinos-bar.de", user: User.all.sample)
venue_photo2 = Photo.new
venue_photo2.remote_photo_url = venueurls.sample
venue_photo2.profile = venue2
venue_photo2.save!
venue2.save!
venue3 = Venue.new(name: "Le Wagon Bar", address: "Rudi-Dutschke-Straße 26, 10969 Berlin", telephone: "+33 1 45 62 50 23", email: "richsucks@rich.com", description: "Your neighborhood spot to code & drink", website: "http://www.letittytwister.com", user: user3)
venue_photo3 = Photo.new
venue_photo3.remote_photo_url = venueurls.sample
venue_photo3.profile = venue3
venue_photo3.save!
venue3.save!
venue4 = Venue.new(name: "Baiz", address: "Donaustraße 115, 12043 Berlin", telephone: "+49 0179 1809168", email: "alex@rules.com", description: "The gitmeister played there", website: "http://donau115.de", user: User.all.sample)
venue_photo4 = Photo.new
venue_photo4.remote_photo_url = venueurls.sample
venue_photo4.profile = venue4
venue_photo4.save!
venues = Venue.all

puts 'Creating gigs...'


gigurls = ["https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/36860774_209579706281108_8083553296352018432_n.jpg?_nc_cat=0&oh=ff9ac773d300da538cf7499a300be14d&oe=5C051BB9", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/28950869_2007931586162226_3688205910200549376_o.jpg?_nc_cat=0&oh=a6df60beb4ef1c678590e279069e0a92&oe=5BF24462", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/37203630_10156036878987851_1422590582588440576_n.jpg?_nc_cat=0&oh=0b0b823ce213415fffd286061d7d495c&oe=5BEED70A", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/13124900_1034401809987532_683886661362216387_n.jpg?_nc_cat=0&oh=83567e54cbd8bdab8b7a1a5e222ee78f&oe=5C33E0DA", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/40101637_318722568879151_2696784603376517120_o.jpg?_nc_cat=0&oh=4b62b9f9199d1d1157a5fbf48ff165e1&oe=5C39135B", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/33042196_646337229035756_125914121697755136_n.jpg?_nc_cat=0&oh=ee294d674c68b9b099de6fbee1ecd29a&oe=5C0015E6", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/38789165_10150993411979986_3806125298169151488_n.png?_nc_cat=0&oh=da915a4301fe9d9b850ddc87bc5a11d7&oe=5C375F77", "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/30581855_10156490837809301_5013406743552589824_n.jpg?_nc_cat=0&oh=1eb60cf959f7748279b46475954c74fa&oe=5C308B5E", "https://ksassets.timeincuk.net/wp/uploads/sites/55/2012/11/LedZeppelinCelebrationDay600Gb130912_0.jpg"]

gig1 = Gig.new(address: "Friedrichshain, Berlin", paid: false, description: "Bringing you live music to our new Side Stage. Groovy band wanted to spike our drink sales, unpaid though. Bringing you live music to our new Side Stage. Groovy band wanted to spike our drink sales, unpaid though. Bringing you live music to our new Side Stage. Groovy band wanted to spike our drink sales, unpaid though.", other_bands: "Mistar Anderson, Josh Hill", url: "https://www.facebook.com/events/1109582902525113/", name: "Thursdays @ The Walrus", date: '2019-09-09', time: '20:30')
gig1.genre = genres.sample
gig1.organizer = venue1
gig_photo1 = Photo.new
gig_photo1.remote_photo_url = gigurls[1]
gig_photo1.profile = gig1
gig_photo1.save!
gig1.save!
gig2 = Gig.new(address: "Kreuzberg, Berlin", paid: true, description: "We need an opener for our EP release show", other_bands: "TATTAT", url: "https://www.facebook.com/events/1109582902525113/", name: "Island party at brothers", date: '2019-09-09', time: '21:00')
gig2.genre = genres.sample
gig2.organizer = venue1
gig_photo2 = Photo.new
gig_photo2.remote_photo_url = gigurls[0]
gig_photo2.profile = gig2
gig_photo2.save!
gig2.save!
gig3 = Gig.new(address: "Rudi-Dutschke-Straße 26, 10969 Berlin", paid: true, description: "Live music act wanted saturday pm, this will be a rager, as we are celebrating our demo day. Band must be funky and upbeat. Good vibes only. Cheers! Live music act wanted saturday pm, this will be a rager, as we are celebrating our demo day. Band must be funky and upbeat. Good vibes only. Cheers! Live music act wanted saturday pm, this will be a rager, as we are celebrating our demo day. Band must be funky and upbeat. Good vibes only. Cheers!", other_bands: "MoJoFlo", url: "https://www.facebook.com/events/1109582902525113/", name: "RAGER @ Le Wagon", date: '2019-09-09', time: '20:00')
gig3.genre = genres.sample
gig3.organizer = venue3
gig_photo3 = Photo.new
gig_photo3.remote_photo_url = gigurls[2]
gig_photo3.profile = gig3
gig_photo3.save!
gig3.save!
gig4 = Gig.new(address: "Pankow, Berlin", paid: false, description: "Come play a house show with us", other_bands: "Hello Luna & Electric Orange Peel", url: "https://www.facebook.com/events/1109582902525113/", name: "House show @ Misfit Manor", date: '2019-09-09', time: '21:30')
gig4.genre = genres.sample
gig4.organizer = band3
gig_photo4 = Photo.new
gig_photo4.remote_photo_url = gigurls[3]
gig_photo4.profile = gig4
gig_photo4.save!
gig4.save!
gig4 = Gig.new(address: "Gneisenaustraße 63, Berlin", paid: false, description: "Open spot for sunday at Funk and Beer fest in Berlin", other_bands: "Tauk", url: "https://www.facebook.com/events/1109582902525113/", name: "Funk and Beer fest", date: '2019-09-09', time: '21:30')
gig4.genre = genres.sample
gig4.organizer = venue1
gig_photo4 = Photo.new
gig_photo4.remote_photo_url = gigurls[4]
gig_photo4.profile = gig4
gig_photo4.save!
gig4.save!
gig4 = Gig.new(address: "Mehringdamm, Berlin", paid: false, description: "Come shred with local bands at the Gnarbeque, featuring Tourist Trap", other_bands: "Hello Luna & Electric Orange Peel", url: "https://www.facebook.com/events/1109582902525113/", name: "Festival slot for Gnarbeque", date: '2019-09-09', time: '21:30')
gig4.genre = genres.sample
gig4.organizer = band4
gig_photo4 = Photo.new
gig_photo4.remote_photo_url = gigurls[5]
gig_photo4.profile = gig4
gig_photo4.save!
gig4.save!
gig5 = Gig.new(address: "Columbus, Ohio", paid: false, description: "Jam and raise money for refugee job placement", other_bands: "Hello Luna & Electric Orange Peel", url: "https://www.facebook.com/events/1109582902525113/", name: "House show and fundraiser", date: '2019-05-01', time: '21:30')
gig5.genre = genres.sample
gig5.organizer = band4
gig_photo5 = Photo.new
gig_photo5.remote_photo_url = gigurls[6]
gig_photo5.profile = gig5
gig_photo5.save!
gig5.save!
gig6 = Gig.new(address: "San Francisco, California", paid: false, description: "DJ Bassnectar debut in san francisco warehouse", other_bands: "Tauk, Phuturprimitive", url: "https://www.facebook.com/events/1109582902525113/", name: "Bassnectar debut ft. Tauk", date: '2019-06-21', time: '21:30')
gig6.genre = genres.sample
gig6.organizer = venue2
gig_photo6 = Photo.new
gig_photo6.remote_photo_url = gigurls[7]
gig_photo6.profile = gig6
gig_photo6.save!
gig6.save!
gig7 = Gig.new(address: "Mitte, Berlin", paid: false, description: "Open for Led Zeppelin", other_bands: "Zoso", url: "https://www.facebook.com/events/1109582902525113/", name: "Led Zeppelin resurrection show", date: '2018-12-21', time: '21:30')
gig7.genre = genres.sample
gig7.organizer = venue2
gig_photo7 = Photo.new
gig_photo7.remote_photo_url = gigurls[8]
gig_photo7.profile = gig7
gig_photo7.save!
gig7.save!
gig8 = Gig.new(address: "Rudi-Dutschke-Straße 26, 10969 Berlin", paid: false, description: "DJ Bassnectar debut in san francisco warehouse", other_bands: "Tauk, Phuturprimitive", url: "https://www.facebook.com/events/1109582902525113/", name: "Rich singing opera", date: '2019-07-10', time: '21:30')
gig8.genre = genres.sample
gig8.organizer = venue3
gig_photo8 = Photo.new
gig_photo8.remote_photo_url = gigurls.sample
gig_photo8.profile = gig8
gig_photo8.save!
gig8.save!
gig9 = Gig.new(address: "Rudi-Dutschke-Straße 26, 10969 Berlin", paid: false, description: "Open for Led Zeppelin", other_bands: "Zoso", url: "https://www.facebook.com/events/1109582902525113/", name: "Concert w/ no music", date: '2018-05-10', time: '21:30')
gig9.genre = genres.sample
gig9.organizer = venue3
gig_photo9 = Photo.new
gig_photo9.remote_photo_url = gigurls.sample
gig_photo9.profile = gig9
gig_photo9.save!
gig9.save!
gigs = Gig.all

puts 'Seeding reviews...'
# misc reviews
8.times do
  review = Review.new(subject: Faker::Job.key_skill, content: Faker::Lorem.sentences(10).join(' '))
  review.professionalism = (5 * rand + 1).to_i
  review.quality = (5 * rand + 1).to_i
  review.turnout = (5 * rand + 1).to_i
  coin = (2 * rand + 1).to_i
  if coin == 2
    review.sender = Band.all.sample
    review.receiver = [venue2, venue4].sample
  else
    review.sender = Venue.all.sample
    review.receiver = [band2, band3, band4].sample
  end
  review.save!
end
# tattat reviews
review1 = Review.new(subject: "Great energy, decadent and nougaty delicious music", content: "Great live. They’ve got a groovy soul sound. You just can’t stand still when they play. Their passion for their music and eachother really shows.")
  review1.professionalism = 5
  review1.quality = 5
  review1.turnout = 5
    review1.sender = [venue2,venue4,band2,band3].sample
    review1.receiver = band1
    review1.save!
review2 = Review.new(subject: "Incredible musicians and people", content: "Overheard them in band practice and a brother fell in love... True Story. Also the crew kills it at karaoke.")
  review2.professionalism = 5
  review2.quality = 5
  review2.turnout = 5
    review2.sender = [venue2,venue4,band2,band3].sample
    review2.receiver = band1
    review2.save!
review3 = Review.new(subject: "Professional, fun, impressive", content: "I never miss a TATTAT show. They're amazing songwriters and even better performers")
  review3.professionalism = 5
  review3.quality = 5
  review3.turnout = 5
    review3.sender = [venue2,venue4,band2,band3].sample
    review3.receiver = band1
    review3.save!
review4 = Review.new(subject: "Best band I've ever hosted", content: "Super easy to coordinate with, they're extremely professional and always bring a wicked high turnout.")
review4.professionalism = 5
  review4.quality = 5
  review4.turnout = 5
    review4.sender = [venue2,venue4].sample
    review4.receiver = band1
    review4.save!
# walrus reviews
reviewx = Review.new(subject: "Dirty and Weird", content: "I played at the Walrus with my band. Having heard about it from a friend, we thought it would be a great experience. Nothing prepared me for what was the single worst gigging experience of my life as a professional musician. It seemed like they hadn’t even swept the floor after last night’s rager. And, at the end of the night, they refused to pay us the agreed amount. Unprofessional!")
  reviewx.professionalism = (3 * rand + 1).to_i
  reviewx.quality = (3 * rand + 1).to_i
  reviewx.turnout = (3 * rand + 1).to_i
    reviewx.sender = [band2, band3, band4].sample
    reviewx.receiver = venue1
    reviewx.save!
reviewz = Review.new(subject: "They never paid me...", content: "
Musicians often joke that when venues say “the check’s in the mail” it’ll never come. Well, with the Walrus it doesn’t. My band played here, and it was a total scam. They never paid us. Still trying to recoup our losses from that tour…")
  reviewz.professionalism = (3 * rand + 1).to_i
  reviewz.quality = (3 * rand + 1).to_i
  reviewz.turnout = (3 * rand + 1).to_i
    reviewz.sender = [band2, band3, band4].sample
    reviewz.receiver = venue1
    reviewz.save!
reviewy = Review.new(subject: "Ugly hellhole", content: "
The Walrus is to venues what Donald Trump’s toupee is to hair. Sad! And strangely, the walls seem to be painted a similar color. It’s an orange hellhole where bands go to die. I would highly discourage anyone else from playing there.")
  reviewy.professionalism = (3 * rand + 1).to_i
  reviewy.quality = (3 * rand + 1).to_i
  reviewy.turnout = (3 * rand + 1).to_i
    reviewy.sender = [band2, band3, band4].sample
    reviewy.receiver = venue1
    reviewy.save!
revieww = Review.new(subject: "Full of mouth breathers", content: "If the Death Star had a bar, it would probably be the Walrus. Everyone who attends seems to be a mouth-breather, much like Darth Vader. It is a gross and horrible space, and playing there will shave years off your life.")
  revieww.professionalism = (3 * rand + 1).to_i
  revieww.quality = (3 * rand + 1).to_i
  revieww.turnout = (3 * rand + 1).to_i
    revieww.sender = [band2, band3, band4].sample
    revieww.receiver = venue1
    revieww.save!



puts 'Seeding bookings...'
booking1 = Booking.new(status:"confirmed")
booking1.band = band1
booking1.gig = gig5
booking1.save!

booking2 = Booking.new(status:"confirmed")
booking2.band = band1
booking2.gig = gig6
booking2.save!

booking3 = Booking.new(status:"confirmed")
booking3.band = band1
booking3.gig = gig7
booking3.save!

bookings = Booking.all

puts 'Finished!'
