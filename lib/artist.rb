require 'pry'
class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self }
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        # if all.find {|artist| artist.name == name}
        #     all.find {|artist| artist.name == name}
        # else
        #     Artist.new(name)
        # end
        all.find {|artist| artist.name == name} || Artist.new(name)
    end

    def print_songs
        songs.each do |song|
            puts "#{song.name}"
        end
    end

end