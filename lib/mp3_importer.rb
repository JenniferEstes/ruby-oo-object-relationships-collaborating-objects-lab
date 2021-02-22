class MP3Importer

    attr_accessor :path
    def initialize(path)
        @path = path

    end
    
    def files
        array_of_songs = Dir.entries(@path).slice(2..6)
    end

    def import
        files.each do |file_name|
        Song.new_by_filename(file_name)
        end
    end
end
