class Song
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1 
    @@genres << genre
    @@artists << artist
    
    @name = name
    @artist = artist
    @genre = genre
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres
    self.genres.uniq 
  end 
  
  def self.artists
    @@artists.uniq 
  end 
  
  def self.genre_count
    @@genres.genre_count
  end
  
  def self.artist_count
    @@artists.artist_count
  end 
end 


