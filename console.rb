require 'pry'
require_relative './band.rb'
require_relative './concert.rb'
require_relative './venue.rb'

green_day = Band.new("Green Day", "Sanduski, OH")
paramore = Band.new("Paramore", "Shrug... Canada?")
band = Band.new("the band", "prolly like georgia")

aboot_playhouse = Venue.new("Aboot Playhouse", "Shrug... Canada?")
msg = Venue.new("Madison Square Garden", "NYC")

paramore_show_ca = Concert.new("03/24/18", paramore, aboot_playhouse)
green_day_msg = Concert.new("02/24/18", green_day, msg)
band_msg = Concert.new("03/24/76", band, msg)


binding.pry

hi = 'hello'
