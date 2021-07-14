class MP3Importer

    attr_accessor :path
    
    
    def initialize(filepath)
        @path = filepath
    end


    def files
       @files = Dir.entries(@path)
       @files.delete_if {|name| name == "."|| name == ".."}
    end

    def import
        files.each do |file|
            song = Song.new_by_filename(song)
        end
    end



end