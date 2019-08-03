class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(song_name, artist, genre)
    @name = song_name
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
    one_each_genre = []
    @@genres.each do |genre|
      if one_each_genre.include?(genre)
        ""
      else
        one_each_genre << genre
      end
    end
    return one_each_genre
  end

  def self.artists
    one_each_artist = []
    @@artists.each do |artist|
      if one_each_artist.include?(artist)
        ""
      else
        one_each_artist << artist
      end
    end
    return one_each_artist
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |genre|
        genre_hash[genre] += 1
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |artist|
        artist_hash[artist] += 1
    end
    return artist_hash
  end

end
