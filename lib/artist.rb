class Artist
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def new_song(name, genre)
        @name = name
        @genre = genre
        new_song = Song.new(name, self, genre)
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end
end