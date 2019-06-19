class Song
  attr_accessor :name, :artist, :genre

  @@genres = []

  @@artists = []

  @@count = 0

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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |each_genre|
      if genre_count[each_genre]
        genre_count[each_genre] += 1
      else
        genre_count[each_genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |each_artist|
      if artist_count[each_artist]
        artist_count[each_artist] += 1
      else
        artist_count[each_artist] = 1
      end
    end
    artist_count
  end

end
