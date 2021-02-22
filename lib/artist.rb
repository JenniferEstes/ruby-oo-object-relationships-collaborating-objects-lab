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

    def songs
        Song.all.find_all do |song|
            song.artist == self
        end
    end

    def add_song(song_object)
        song_object.artist = self
    end

    def self.find_or_create_by_name(name)
        artist_object = Artist.all.find {|artist| artist.name == name}
        if artist_object
            artist_object
        else 
            artist_object = Artist.new(name)             
        end
    end 

    def print_songs
        self.songs.each do |song|
            puts song.name
        end 
    end

end
