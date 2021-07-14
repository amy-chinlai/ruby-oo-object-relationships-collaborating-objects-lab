class Song

    attr_accessor :artist, :name

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        parsed_filename = filename.split(" - ")
        song = self.new(parsed_filename[1])
        artist = Artist.find_or_create_by_name(parsed_filename[0])
        song.artist = artist
        artist.add_song(song)
        song
    end

    def artist_name=(artist)
        # binding.pry
        song = self
        artist = Artist.find_or_create_by_name(artist)
        song.artist = artist
    end

end