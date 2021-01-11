class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
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
    genre_count = {}
    @@genres.each do |genre_name|
      if genre_count.key?(genre_name) == true
        genre_count[genre_name] += 1
      else
        genre_count[genre_name] = 1
      end
    end
    return genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist_name|
      if artist_count.key?(artist_name) == true
        artist_count[artist_name] += 1
      else
        artist_count[artist_name] = 1
      end
    end
    return artist_count
  end
end
