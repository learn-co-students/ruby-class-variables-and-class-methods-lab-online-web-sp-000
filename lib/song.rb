class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genres = []
    @@genres.each do |genre|
      if !genres.include?(genre)
        genres << genre
      end
    end
    genres
  end
  
  def self.artists
    artists = []
    @@artists.each do |artist|
      if !artists.include?(artist)
        artists << artist
      end
    end
    artists
  end
  
  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      if genres.has_key?(genre)
        genres[genre] += 1
      else
        genres[genre] = 1
      end
    end
    genres
  end
  
  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if artists.has_key?(artist)
        artists[artist] += 1
      else
        artists[artist] = 1
      end
    end
    artists
  end
end