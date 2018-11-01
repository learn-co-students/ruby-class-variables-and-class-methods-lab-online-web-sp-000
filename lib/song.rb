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
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) do |genre_count_hash, genre|
      genre_count_hash[genre] += 1
      genre_count_hash
    end
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) do |artist_count_hash, artist|
      artist_count_hash[artist] += 1
      artist_count_hash
    end
  end
end
