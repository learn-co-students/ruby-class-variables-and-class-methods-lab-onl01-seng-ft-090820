require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = [ ]
  @@genres = [ ]
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1

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
    genre_count = { }
    @@genres.each do |genre|          
      if genre_count[genre]
        genre_count[genre] += 1
      else genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = { }
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else artist_count[artist] = 1
      end
    end
    artist_count
    
  end
  
end


#Notes
##genre_count: for each iteration the genres stored in the @@genre class variable are stored in a hash as a key. The key value increments by 1 if the same genre iterates again, which is the number of songs