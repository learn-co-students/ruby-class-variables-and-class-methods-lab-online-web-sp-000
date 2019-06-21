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
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    histogramA = {}
    gen_count = 0
    @@genres.each do |key|
     gen_count = @@genres.count(key)
      histogramA[key] = gen_count
    end
   histogramA
  end
  
  def self.artist_count
        histogramB = {}
        art_count = 0
      @@artists.each do |key|
      art_count = @@artists.count(key)
      histogramB[key] = art_count
      end
   histogramB
  end
  
end