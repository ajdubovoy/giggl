# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.destroy_all
venue1 = Venue.create(name: "Dirty Dicks", adress: "202 Bishopsgate, London EC2M 4NR", telephone: "+44 20 7283 5888", email: "dirty@dicks.com", description: "3-floor pub with wood panelling", website: "http://www.dirtydicks.co.uk", user: User.all.sample)
venue2 = Venue.create(name: "Tarantino's Bar", adress: "Brunnenstraße 163, Berlin", telephone: "+49 30 40500355" email: "tarantino@feet.com", description: "footwear optional", website: "http://tarantinos-bar.de", user: User.all.sample)
venue3 = Venue.create(name: "Le Titty Twister", adress: "5 Rue de Berri, 75008 Paris", telephone: "+33 1 45 62 50 23" email: "titties@doubleD.com", description: "sun's out", website: "http://www.letittytwister.com", user: User.all.sample)
venue4 = Venue.create(name: "Donau115", adress: "Donaustraße 115, 12043 Berlin", telephone: "+49 0179 1809168" email: "alex@rules.com", description: "the gitmeister played there", website: "http://donau115.de", user: User.all.sample)
venues = Venue.all



  # instrument.remote_photo_url = urls.sample
  # instrument.save!
  # urls = ['https://images.pexels.com/photos/42224/accord-acoustic-art-background-42224.jpeg?cs=srgb&dl=acoustic-guitar-classical-guitar-concert-guitar-42224.jpg&fm=jpg', 'https://images.pexels.com/photos/45243/saxophone-music-gold-gloss-45243.jpeg?cs=srgb&dl=brass-classic-classical-music-45243.jpg&fm=jpg', 'https://images.pexels.com/photos/1021142/pexels-photo-1021142.jpeg?cs=srgb&dl=antique-bedroom-chord-1021142.jpg&fm=jpg', 'https://images.pexels.com/photos/51937/oboe-music-tool-art-51937.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940, https://images.pexels.com/photos/417456/pexels-photo-417456.jpeg?cs=srgb&dl=adult-band-bokeh-417456.jpg&fm=jpg', 'https://images.pexels.com/photos/237464/pexels-photo-237464.jpeg?cs=srgb&dl=drum-drums-musical-instrument-237464.jpg&fm=jpg', 'https://images.pexels.com/photos/165973/pexels-photo-165973.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
