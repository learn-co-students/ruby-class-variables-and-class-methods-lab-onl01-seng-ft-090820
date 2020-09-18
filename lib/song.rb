class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@genres << genre #contains all of the genres of existing songs
    @@artists << artist #contains all of the artists of existing songs
  end
  
  def self.count #is a class method that returns a number of songs created
    @@count
  end
  
  def self.artists #is a class method that returns a unique array of artists
    @@artists.uniq
  end
  
  def self.genres #is a class method that returns a unique array of genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count= Hash.new(0) #return a hash in which the keys are the names of each genre
    @@genres.each {|genre| genre_count[genre] +=1}
    genre_count
  end
  
  def self.artist_count
    artist_count= Hash.new(0) #return a hash in which the keys are the names of each artist
    @@artists.each {|artist| artist_count[artist] +=1}
    artist_count
  end
end



