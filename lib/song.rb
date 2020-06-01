class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

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
    unique_artists = []
    @@artists.each do |artist| 
      unique_artists << artist unless unique_artists.include?(artist)
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre| 
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end

  def self.genre_count
    @@genres.each do |genre| 
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] ||= 0
      @@artist_count[artist] += 1
    end
    @@artist_count
  end

end