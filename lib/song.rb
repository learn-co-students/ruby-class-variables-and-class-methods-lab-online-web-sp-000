class Song
  attr_accessor :name, :artist, :genre
#  attr_reader :count
  @@count=0
  @@genres=[]
  @@artists=[]
 
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @@artists << artist #if !@@artists.include?(artist) 
    @genre = genre
    @@genres << genre #if !@@genres.include?(genre) 
    @@count+=1
  end
 
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.uniq.map { |x| [x, @@genres.count(x)] }.to_h
  end

  def self.artist_count
    @@artists.uniq.map { |x| [x, @@artists.count(x)] }.to_h
  end
end