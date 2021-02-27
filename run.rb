require_relative "lib/artist.rb"
require_relative "lib/song.rb"
require_relative "lib/genre.rb"

require"pry"

beyonce = Artist.new("Beyonce")
adele = Artist.new("Adele")

rock = Genre.new("rock")
pop = Genre.new("pop")

singlelady = Song.new("Single Lady", beyonce, rock)
hello = Song.new("Hello", adele, pop )
binding.pry