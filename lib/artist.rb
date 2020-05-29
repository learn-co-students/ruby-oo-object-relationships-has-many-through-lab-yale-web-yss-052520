class Artist
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def new_song(song, genre)
        Song.new(song, self, genre)
    end 

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def genres
        songs.collect {|song| song.genre}
    end
end 