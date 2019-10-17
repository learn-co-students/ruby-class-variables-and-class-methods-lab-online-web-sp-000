require "pry"

class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
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

  def song_count=(songs)
    @count = songs
  end

  def song_count
    @song_count
  end


  def self.genres
    @@genres.uniq!
  end

  def self.artists
      @@artists.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.map do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    return genre_count
end

  def self.artist_count
    artist_count = {}
    @@artists.map do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    return artist_count
   end
end
