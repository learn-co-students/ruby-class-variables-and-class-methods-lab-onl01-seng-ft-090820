class Song
attr_accessor :name, :genre, :artist

@@count = 0
@@artists = []
@@genres = []

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    g_histogram =  Hash.new(0)
    @@genres.each do |genre|
      g_histogram[genre]
      g_histogram[genre] = g_histogram[genre] + 1
    end
    g_histogram
  end

  def self.artist_count
    a_histogram = Hash.new(0)
    @@artists.each do |artist|
      a_histogram[artist]
      a_histogram[artist] = a_histogram[artist] + 1
    end
    a_histogram
  end

end
