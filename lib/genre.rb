class Genre
    @@all = []
    attr_accessor :name
    def initialize(name_genre)
        @name = name_genre
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.map {|song| song.artist}
    end

        
        


end



