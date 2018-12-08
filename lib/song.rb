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
    unique_genres_array = []
    @@genres.each do |genre|
      if !unique_genres_array.include?(genre)
        unique_genres_array << genre
      end
    end
    unique_genres_array
  end
  
  def self.artists
    unique_arists_array = []
    @@artists.each do |artist|
      if !unique_arists_array.include?(artist)
        unique_arists_array << artist
      end
    end
    unique_arists_array
  end
  
  def self.genre_count
    genre_histogram = {}
    @@genres.each do |genre|
      if genre_histogram.key?(genre)
        genre_histogram[genre] += 1 
      else
        genre_histogram[genre] = 1
      end
    end
    genre_histogram
  end
  
  def self.artist_count
    artist_histogram = {}
    @@artists.each do |artist|
      if artist_histogram.key?(artist)
        artist_histogram[artist] += 1 
      else
        artist_histogram[artist] = 1
      end
    end
    artist_histogram
  end
  
end