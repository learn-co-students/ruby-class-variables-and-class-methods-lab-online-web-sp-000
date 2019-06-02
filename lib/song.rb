class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
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
    unique_genres = @@genres.uniq
    unique_genres
  end
  
  def self.artists
    unique_artists = @@artists.uniq
    unique_artists
  end
  
  def self.genre_count
    genre_list = {}
    @@genres.each do |genre|
      genre_list.include?(genre)? genre_list[genre] += 1 : genre_list[genre] = 1 
    end
    genre_list
  end
  
  def self.artist_count
    artist_list = {}
    @@artists.each do |artist|
      artist_list.include?(artist)? artist_list[artist] += 1 : artist_list[artist] = 1 
    end
    artist_list
  end
  
end