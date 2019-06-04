
class Song

  attr_reader :artist, :name, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  # @@genre_count = {}
  # @@artist_count = {}

  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

    # @@genre_count[@genre] = @@count
    # @@artist_count[@artist] = @@count
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
    #iterate over @@genres and if it exists increment the key by 1
    @@genres.group_by{ |v| v }.map{ |k, v| [k, v.size] }.to_h
    # @@genre_count.to_h
  end

  def self.artist_count
    @@artists.group_by{ |v| v }.map{ |k, v| [k, v.size] }.to_h
  end

end
