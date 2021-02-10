class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []


  def self.count
    @@count
  end

def self.genres
  @@genres = @@genres.uniq
end

def self.artists
  @@artists = @@artists.uniq
end

def self.artist_count
  #I created the hash requested by using Hash.ew(0). The parameter 0 here will be used as the hash's default value,
  #which will be the value returned if I look up a genre that is not initialzed yet.
  @@artist_count = Hash.new(0)
  @@artists.each { |artist|
    @@artist_count[artist] += 1
  }
  @@artist_count
end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@artists << artist

    @@genres << genre
  end

  def self.genre_count
  @@genre_count = Hash.new(0)
  @@genres.each { |genre|
    @@genre_count[genre] += 1
  }
  @@genre_count
  end
end
