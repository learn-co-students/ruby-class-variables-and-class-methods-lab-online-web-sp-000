class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist #if !@@artists.include?(artist)
    @@genres << genre #if !@@genres.include?(genre)
  end

  def self.count
    @@count
  end
  def self.artists
    unique = []
    @@artists.each do |x|
      if !unique.include?(x)
        unique << x
      end
    end
    return unique
  end
  def self.genres
    unique = []
    @@genres.each do |y|
      if !unique.include?(y)
        unique << y
      end
    end
    return unique
  end
  def self.genre_count
    count = {}
    self.genres.each do |x|
      count[x] = 0
    end
    @@genres.each do |y|
      count[y] += 1
    end
    return count
  end
  def self.artist_count
    count = {}
    self.artists.each do |x|
      count[x] = 0
    end
    @@artists.each do |y|
      count[y] += 1
    end
    return count
  end
end
