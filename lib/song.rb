class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@artists << artist
    @@genres << genre

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
    genre_counts = {}
    @@genres.each do |genre|
      if not genre_counts.key?(genre)
        genre_counts[genre]= 0
      end
      genre_counts[genre] += 1
    end
    genre_counts
  end

  def self.artist_count
    artist_counts = {}
    @@artists.each do |artist|
      if not artist_counts.key?(artist)
        artist_counts[artist]= 0
      end
      artist_counts[artist] += 1
    end
    artist_counts
  end

end
