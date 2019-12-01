class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if !unique_artists.include?(artist)
        unique_artists << artist
      end
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include?(genre)
        unique_genres << genre
      end
    end
    unique_genres
  end

  def self.genre_count
    song_count_by_genre = {}
    @@genres.each do |genre|
      if song_count_by_genre[genre] == nil
        song_count_by_genre[genre] = 0
      end
      song_count_by_genre[genre] += 1
    end
    song_count_by_genre
  end

  def self.artist_count
    song_count_by_artist = {}
    @@artists.each do |artist|
      if song_count_by_artist[artist] == nil
        song_count_by_artist[artist] = 0
      end
      song_count_by_artist[artist] += 1
    end
    song_count_by_artist
  end
end
