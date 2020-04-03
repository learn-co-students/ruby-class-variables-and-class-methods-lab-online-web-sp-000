class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
    @@count +=1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    hash = {} #genre => count
    @@genres.each do |genre|
      if hash[genre]
        hash[genre] +=1
      else
        hash[genre] = 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {} #genre => count
    @@artists.each do |artist|
      if hash[artist]
        hash[artist] +=1
      else
        hash[artist] = 1
      end
    end
    hash
  end

end
