class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    artist_array = []
    @@artists.each do |art|
      if !artist_array.include?(art)
        artist_array << art
      end
    end
    artist_array
  end

  def self.genres
    genre_array = []
    @@genres.each do |gen|
      if !genre_array.include?(gen)
        genre_array << gen
      end
    end
    genre_array
  end

  def self.genre_count
    total = 1
    genre_hash = {}
    @@genres.each do |brand|
      if genre_hash.has_key?(brand)
        genre_hash[brand] = total + 1
      else
        genre_hash[brand] = total
      end
    end
    genre_hash
  end

  def self.artist_count
    total = 1
    artist_hash = {}
    @@artists.each do |musician|
      if artist_hash.has_key?(musician)
        artist_hash[musician] = total + 1
      else
        artist_hash[musician] = total
      end
    end
    artist_hash
  end

end
