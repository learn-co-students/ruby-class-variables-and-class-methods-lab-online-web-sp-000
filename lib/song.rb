class Song 
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
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
    results = []
    @@artists.each do |a|
      results << a if !results.include?(a)
    end 
    results
  end 
  def self.genres
    results = [] 
    @@genres.each do |g|
      results << g if !results.include?(g)
    end 
    results 
  end 
  def self.genre_count 
    results = {}
    @@genres.each do |g|
      results.keys.include?(g) ? results[g] += 1 : results[g] = 1
    end 
    results
  end 
  def self.artist_count 
    results = {}
    @@artists.each do |a| 
      results.keys.include?(a) ? results[a] += 1 : results[a] = 1
    end 
    results
  end 
end 