
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  @@genres = []
  
  @@artists = []
  
  @@genre_count = {}
  
  @@artist_count = {}
  
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
    @@unique_genres = []
    @@genres.each do |genre|
      @@unique_genres << genre if !(@@unique_genres.include?(genre))
    end
    @@unique_genres
  end
  
  def self.artists
    @@unique_artists = []
    @@artists.each do |artist|
      @@unique_artists << artist if !(@@unique_artists.include?(artist))
    end
    @@unique_artists
  end
  
  def self.genre_count
    @@unique_genres.collect do |genre|
      @@genre_count[genre]= @@genres.count(genre)
    end
    @@genre_count
  end
  
  def self.artist_count
    @@unique_artists.collect do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end
end