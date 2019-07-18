class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artists = []
  @@genres = []

  
  def initialize(name,artist,genre)
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
    @@artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.genre_count
    histogram_genre = {}
    @@genres.map do |r|
      if histogram_genre.has_key?(r)
      puts r
      histogram_genre[r] << @@genres.count(r)
      else
      puts r
      histogram_genre[r] = @@genres.count(r)
      end
    end
    histogram_genre
  end
  
  def self.artist_count
    histogram_artists = {}
    @@artists.map do |r|
      if histogram_artists.has_key?(r)
      puts r
      histogram_artists[r] << @@artists.count(r)
      else
      puts r
      histogram_artists[r] = @@artists.count(r)
      end
    end
    histogram_artists
  end 
end