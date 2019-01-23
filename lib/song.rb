class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
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
    @@genres.inject(Hash.new(0)) do |genre_count, genre|
      genre_count[genre] += 1
      genre_count
    end
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) do |artist_count, artist|
      artist_count[artist] += 1
      artist_count
    end
  end

end
