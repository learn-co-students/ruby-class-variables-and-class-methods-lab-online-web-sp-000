
class Song 
  @@count = 0 
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1 
    @@artists << artist
    @@genres << genre
    @artist = artist
    @genre = genre
    @name = name
  end
  
  def Song.count
    @@count
  end
  
  def Song.artists
    unique_artists = []
    @@artists.each do |artist|
      if !unique_artists.include?(artist)
        unique_artists << artist 
      end
    end
    unique_artists
  end
  
  def Song.genres
    unique_genres = []
    @@genres.each do |genre| 
      if !unique_genres.include?(genre)
        unique_genres << genre 
      end 
    end 
    unique_genres
  end 
  
  def Song.artist_count
    artist_hist = {}
    @@artists.each do |artist|
      if artist_hist[artist] == nil 
        artist_hist[artist] = 1 
      else 
        artist_hist[artist] += 1 
      end 
    end
    artist_hist
  end

  def Song.genre_count 
    genre_hist = {}
    @@genres.each do |genre|
      if genre_hist[genre] == nil
        genre_hist[genre] = 1 
      else
        genre_hist[genre] += 1 
      end
    end
    genre_hist
  end
  
end