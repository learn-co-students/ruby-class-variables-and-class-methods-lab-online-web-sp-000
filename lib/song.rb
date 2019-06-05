class Song
   attr_accessor :name, :artist, :genre
   @@song = []
   @@artists = []
   @@genres = []
   @@count = 0
   @@artist_count = {}
   @@genre_count = {}
#
  def fillArtistGenre
    if @@artist_count.has_key?(@artist)
      @@artist_count[artist] = @@artist_count[artist] + 1
    elsif
      @@artist_count[artist] = 1
    end
    if @@genre_count.has_key?(@genre)
      @@genre_count[genre] = @@genre_count[genre] + 1
    elsif
      @@genre_count[genre] = 1
    end
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@song << self
    fillArtistGenre
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
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end
