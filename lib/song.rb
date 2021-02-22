class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)
        song_name = file_name.split(" - ")[1]
        artist_name = file_name.split(" - ")[0]
        new_song = Song.new(song_name)
        new_song.artist = Artist.new(artist_name)

        new_song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
    end 
end