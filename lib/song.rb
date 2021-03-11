class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    
    if @@genres.include?(genre)
      @@genres << genre
      @@genre_count[genre] += 1
    else
      @@genres << genre
      @@genre_count[genre] = 1
    end
    
    if @@artists.include?(artist)
      @@artists << artist
      @@artist_count[artist] += 1
    else
      @@artists << artist
      @@artist_count[artist] = 1
    end
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq{|x| x}
  end
  
  def self.artists
    @@artists.uniq{|x| x}
  end
  
  def self.genre_count
    @@genre_count
  end
  
  def self.artist_count
    @@artist_count
  end
  
end