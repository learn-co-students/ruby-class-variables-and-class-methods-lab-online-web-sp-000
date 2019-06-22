class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.count
    @@count
  end
  def self.genre_count
    genre_count = {}
    @@genres.each do |g|
      if genre_count[g]
        genre_count[g] += 1
      else
        genre_count[g] = 1
      end
    end
    genre_count
  end
  def self.artist_count
    artist_count = {}
    @@artists.each do |a|
      if artist_count[a]
        artist_count[a] += 1
      else
        artist_count[a] = 1
      end
    end
    artist_count
  end
end
