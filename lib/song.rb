class Song
    @@all = []
    attr_accessor :song_name, :artist, :genre

    def initialize(name, artist, genre)
        @song_name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

end