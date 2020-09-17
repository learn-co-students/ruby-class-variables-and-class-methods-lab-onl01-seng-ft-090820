require 'pry'

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
     @@artists = @@artists.uniq
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.genre_count
    @@genres.group_by{ |g| g }.map{ |a, n| [a, n.length]}.to_h
  end

  def self.artist_count
    @@artists.group_by{ |a| a }.map{ |g, n| [g, n.length]}.to_h
  end

end
