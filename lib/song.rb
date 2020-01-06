class Song
  attr_accessor :name, :artist, :genre
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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    h = {}
    @@genres.each do |genre|
      if h[genre] == nil
        h[genre] = 1
      else
        h[genre] += 1
      end
    end
    h
  end

  def self.artist_count
    h = {}
    @@artists.each do |artist|
      if h[artist] == nil
        h[artist] = 1
      else
        h[artist] += 1
      end
    end
    h
  end

end

Song.new("Lucifer", "Jay-Z", "rap" )
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")

p Song.count
p Song.artists
p Song.genres
p Song.class_variable_get(:@@artists)
p Song.genre_count
p Song.artist_count
