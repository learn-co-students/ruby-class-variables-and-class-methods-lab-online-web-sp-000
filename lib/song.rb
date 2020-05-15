class Song
  attr_accessor :name, :artist, :genre

  @@count = 0



  def self.count
    @@count
  end

  @@genres = []

  def self.genres
    @@genres.uniq
  end

  @@artists = []
  def self.artists
    @@artists.uniq
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |x|
      if genre_count[x]
        genre_count[x] += 1
      else
        genre_count[x] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |x|
      if artist_count[x]
        artist_count[x] += 1
      else
        artist_count[x] = 1
      end
    end
    artist_count
  end

end
