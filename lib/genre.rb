class Genre 
    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end 
    attr_reader :name 
    def self.all 
        @@all 
    end 
    def songs 
        Song.all.select {|one_song| one_song.genre == self }
    end 
    def artists 
        self.songs.map do |one_song|
            one_song.artist 
        end.uniq 
    end 
end 