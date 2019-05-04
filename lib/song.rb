class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(s_name, artist, genre)
    @name = s_name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
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
    frequent_genre = Hash.new(0)
    @@genres.each do |genre|
      frequent_genre[genre] += 1
    end
    frequent_genre
  end

  def self.artist_count
    frequent_artist = Hash.new(0)
    @@artists.each do |artist|
      frequent_artist[artist] += 1
    end
    frequent_artist
  end
  
end