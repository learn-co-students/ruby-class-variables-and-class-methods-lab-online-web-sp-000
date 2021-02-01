class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre
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

  def self.artist_count
    artist_count = {}

    self.artists.each do |artist|
      artist_count[artist] = @@artists.count {|a| a == artist}
    end
    artist_count
  end

  def self.genre_count
    genre_count = {}

    self.genres.each do |genre|
      genre_count[genre] = @@genres.count {|g| g == genre}
    end
    genre_count
  end



end
