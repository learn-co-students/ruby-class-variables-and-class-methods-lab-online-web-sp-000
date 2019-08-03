class Song
  attr_accessor :name, :artist, :genre

  # instance variables
  @name = nil
  @artist = nil
  @genre = nil

  # class variables:
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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
    genre_hash = {}
    value = 1
    @@genres.each do |element|
      if genre_hash.include?(element)
        genre_hash[element] = value + 1
      else genre_hash[element] = value
      end
    end
    genre_hash
  end

  def self.artist_count
      artist_hash = {}
      value = 1
      @@artists.each do |element|
        if artist_hash.include?(element)
          artist_hash[element] = value + 1
        else artist_hash[element] = value
        end
      end
      artist_hash
    end

end
