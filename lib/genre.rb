class Genre
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        save()
    end

    def songs()
        Song.all().select{|song| song.genre == self}
    end

    def artists()
        songs().map {|song| song.artist}
    end

    def save()
        self.class.all() << self
    end

    def self.all()
        @@all
    end
end