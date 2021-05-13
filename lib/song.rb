class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end

  attr_accessor :name, :artist, :genre

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
    genre_list = self.genres
    genre_histogram = {}
    genre_list.each do |genre_option|
      genre_histogram[genre_option] = @@genres.count(genre_option)
    end
    genre_histogram
  end

  def self.artist_count
    artist_list = self.artists
    artist_histogram = {}
    artist_list.each do |artist_option|
      artist_histogram[artist_option] = @@artists.count(artist_option)
    end
    artist_histogram
  end
end
