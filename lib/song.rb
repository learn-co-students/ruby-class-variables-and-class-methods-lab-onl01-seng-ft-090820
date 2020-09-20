class Song

    attr_accessor :name, :artist, :genre

    @@count = 0

    @@artists = []

    @@genres = []

    def initialize(name, artist, genre)
        
        @name = name

        @artist = artist

        @genre = genre

        @@count += 1

        @@artists << artist

        @@genres << genre

    end

    def self.count
        @@count
    end

    def self.artists

        artist_list = []
        @@artists.collect { |artist| artist_list << artist unless artist_list.include?(artist) }
        artist_list

    end

    def self.genres

        genre_list = []
        @@genres.collect { |genre| genre_list << genre unless genre_list.include?(genre) }
        genre_list

    end

    def self.genre_count

        #genre_count_list = {}

        #genre_list should be the keys
        genre_list = []
        @@genres.collect { |genre| genre_list << genre unless genre_list.include?(genre) }
        genre_list

        ##selection lengths should be the values
        #genre_list.each do |genre_entry|
            #@@genre.select{|item| item == genre_entry}.length
        #end

        #????

        #genre_count_list

        #-----

        genre_count_list = {}
        genre_list.each { |genre_name| genre_count_list[genre_name] =  @@genres.select{|item| item == genre_name}.length }
        genre_count_list

    end

    def self.artist_count

        #self.artists

        artist_list = []
        @@artists.collect { |artist| artist_list << artist unless artist_list.include?(artist) }
        artist_list

        artist_count_list = {}
        artist_list.each { |artist_name| artist_count_list[artist_name] =  @@artists.select{|item| item == artist_name}.length }
        artist_count_list

    end

end