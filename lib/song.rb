class Song 
    attr_accessor :name, :genre, :artist
    
    @@all = []
    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        self.class.all << self
    end 

    def self.all 
        @@all
    end 
end 