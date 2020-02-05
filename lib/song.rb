class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @genre = genre
    @artist = artist
    @name = name

    @@count += 1

    @@genres << genre
    @@artists << artist

  end
  def self.artists
    artists = @@artists.uniq
  end

  def self.genres
    genres = @@genres.uniq
  end

  def self.count
    @@count
  end
  def self.genre_count
    hash = {}
    @@genres.each do |x|
      if hash.empty?
        hash[x] = 1
      elsif
        hash.key?(x)
          hash[x] += 1
      elsif !hash.key?(x)
        hash[x] = 1
      end
    end
    hash
  end
  def self.artist_count
    hash = {}
    @@artists.each do |x|
      if hash.empty?
        hash[x] = 1
      elsif
        hash.key?(x)
          hash[x] += 1
      elsif !hash.key?(x)
        hash[x] = 1
      end
    end
    hash
  end

end
