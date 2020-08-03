class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

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

  # returns an array of only unique genres
  def self.genres
    unique_genres = []
    @@genres.select do |genre| 
      if !unique_genres.include?(genre)
        unique_genres << genre
      end
    end
    unique_genres
  end
    
  # returns an array of only unique artists
  def self.artists
    unique_artists = []
    @@artists.select do |artist| 
      if !unique_artists.include?(artist)
        unique_artists << artist
      end
    end
    unique_artists
  end

  # returns a hash in which the keys are the names of each genre. 
  # Each genre name key should point to a value that is the number of songs that have that genre.
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  # returns a hash in which the keys are the names of each artist. 
  # Each artist name key should point to a value that is the number of songs that artist has.
  def self.artist_count  
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end