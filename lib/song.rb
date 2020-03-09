
class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@count=0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    data_control(artist, genre)
  end

  def data_control(artist, genre)
    if !@@artist_count.include?(artist)
      @@artist_count[artist] = 0
    end

    if !@@genre_count.include?(genre)
      @@genre_count[genre] = 0
    end
    @@artists << artist
    @@genres << genre
    @@artist_count[artist] += 1
    @@genre_count[genre] += 1
    @@count += 1
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end
