require 'pry'

class Song

  attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []
@@genre_count_hash = {}
@@artist_count_hash = {}

  def initialize(name,artist,genre)
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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genre_count_hash[genre] = @@genres.count(genre)
    end
    @@genre_count_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count_hash[artist] = @@artists.count(artist)
    end
    @@artist_count_hash
  end

end
