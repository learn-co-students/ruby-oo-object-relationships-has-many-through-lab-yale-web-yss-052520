class Artist 
    @@all = []
    def initialize(name)
        @name = name 
        @@all << self
    end 
    attr_reader :name 
    attr_accessor :genre
    def self.all 
        @@all 
    end 
    def new_song(s_name, s_genre)
        Song.new(s_name, self, s_genre)
    end 
    def songs 
        Song.all.select {|one_song| one_song.artist == self}
    end 
    def genres 
        self.songs.map do |one_song| 
            one_song.genre
        end.uniq 
    end 
end 
