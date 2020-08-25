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
    @@genres << @genre
    @@artists << @artist
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
    result = {}
    @@genres.each do |g|
      result.keys.include?(g) ? result[g] += 1 : result[g] = 1
    end
    result
  end
  
  def self.artist_count
    result = {}
    @@artists.each do |g|
      result.keys.include?(g) ? result[g] += 1 : result[g] = 1
    end
    result
  end
  
end

# a = Song.new("songA", "artistA", "rap")
# b = Song.new("songB", "artistB", "classical")
# c = Song.new("songC", "artistA", "classical")
# puts Song.artist_count