class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
    the_count = {}
    @@genres.each do |genre|
      if the_count.has_key?(genre)
        the_count[genre] += 1
      else
        the_count[genre] = 1
      end
    end
    the_count
  end

  def self.artist_count
    the_count = {}
    @@artists.each do |artist|
      if the_count.has_key?(artist)
        the_count[artist] += 1
      else
        the_count[artist] = 1
      end
    end
    the_count
  end

end
