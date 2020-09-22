class Song 
  
  
  @@count =0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    puts self
    @@artists << artist
    @@genres << genre
  end                                                
  def name 
    @name
  end
  def artist
    @artist
  end
  def genre
    @genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    num_of_genre = {}
    @@genres.each do |genre, num|
      if num_of_genre.include? (genre)
        num_of_genre[genre] +=1
      else 
        num_of_genre[genre] =1
      end
    end
    num_of_genre
  end
  def self.artist_count
    num_of_artist ={}
    @@artists.each do |artist, num|
      if num_of_artist.include? (artist)
        num_of_artist[artist] +=1
      else 
        num_of_artist[artist] =1
      end
    end
    num_of_artist
  end
  
  
end
 