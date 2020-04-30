
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
    unique_genre_array = []
    @@genres.each do |genre|
      if !unique_genre_array.include?(genre)
        unique_genre_array << genre
      end
    end
    unique_genre_array
  end
  
  def self.artists
    unique_artist_array = []
    @@artists.each do |artist|
      if !unique_artist_array.include?(artist)
        unique_artist_array << artist
      end
    end
    unique_artist_array
  end
  
  def self.genre_count 
    genre_count_array = {} 
    @@genres.each do |genre|
      if genre_count_array.include?(genre)
        genre_count_array[genre] += 1
    else
      genre_count_array[genre] = 1
    end
    end
    genre_count_array
  end
  
    def self.artist_count 
    artist_count_array = {} 
    @@artists.each do |artist|
      if artist_count_array.include?(artist)
        artist_count_array[artist] += 1
    else
      artist_count_array[artist] = 1
    end
    end
    artist_count_array
  end
  
  
end