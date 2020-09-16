require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count 
    @@count
  end 
  
  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
     genre_h = {}
    # genre_h = Hash.new(0)
     @@genres.each do |genre| 
      # binding.pry
       if genre_h[genre] 
         genre_h[genre] += 1 
      else
        genre_h[genre] = 1
       end
      end
    genre_h
  end
  
    def self.artist_count
      artist_h = { }
      @@artists.each do |artist|
      if artist_h[artist]
        artist_h[artist] += 1 
      else
        artist_h[artist] = 1
      end
    end
      artist_h
    end
end 