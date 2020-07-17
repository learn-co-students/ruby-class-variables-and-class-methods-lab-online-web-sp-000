class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    
    @name = name
    @artist = artist
    @genre = genre
    
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    unique_artists = []
    
    @@artists.each do |artist|
      if unique_artists.none? {|unique_artist| unique_artist == artist}
        unique_artists << artist
      end
    end

    unique_artists
  end
  
  def self.genres
    unique_genres = []
    
    @@genres.each do |genre|
      if unique_genres.none? {|unique_genre| unique_genre == genre}
        unique_genres << genre
      end
    end

    unique_genres
  end
  
  def self.genre_count
    genre_count = {}
    
    @@genres.each do |genre|
      if genre_count.keys.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    
    genre_count
  end
  
  def self.artist_count
    artist_count = {}
    
    @@artists.each do |artist| 
      if artist_count.keys.include?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    
    artist_count
  end
  
end