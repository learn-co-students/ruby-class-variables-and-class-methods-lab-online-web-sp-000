class Song

attr_accessor :name, :artist, :genre
attr_reader

@@count = 0
@@artists = []
@@genres = []
@@genre_count = {}
@@artist_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre

    @name = name
    @artist = artist
    @genre = genre

    key = genre;
    if @@genre_count.has_key?(key)
      @@genre_count[key] = @@genre_count[key] + 1
    else
      @@genre_count[key] = 1
    end

    key = artist
    if @@artist_count.has_key?(key)
      @@artist_count[key] = @@artist_count[key] + 1
    else
      @@artist_count[key] = 1
    end
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
