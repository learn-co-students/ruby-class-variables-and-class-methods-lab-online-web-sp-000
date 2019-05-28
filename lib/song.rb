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
    return @@count
  end
  
  def self.genres
    list = []
    @@genres.each {|genre| list << genre if !list.include?(genre)}
    return list
  end
  
  def self.artists
    list = []
    @@artists.each {|artist| list << artist if !list.include?(artist)}
    return list
  end
  
  def self.genre_count
    count = {}
    @@genres.each do |genre|
      if count.keys.include?(genre)
        count[genre] += 1
      else
        count[genre] = 1
      end
    end
    return count
  end
  
  def self.artist_count
    count = {}
    @@artists.each do |artist|
      if count.keys.include?(artist)
        count[artist] += 1
      else
        count[artist] = 1
      end
    end
    return count
  end
end