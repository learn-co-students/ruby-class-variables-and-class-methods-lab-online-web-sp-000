require 'pry'

class Song
  attr_reader :name, :artist, :genre

  @@count = 0      #total songs in class
  @@artists = []   #list of all artists in class
  @@genres = []    #list of all genres in class

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
    artist_list = []
    @@artists.each { |artist| artist_list << artist if !artist_list.include?(artist) }
    artist_list
  end

  def self.genres
    genre_list = []
    @@genres.each { |genre| genre_list << genre if !genre_list.include?(genre) }
    genre_list
  end

  def self.artist_count
    artist_song = {}
    @@artists.each do |artist|
      if artist_song.has_key?(artist)
        artist_song[artist] +=1
      else
        artist_song[artist] = 1
      end
    end
    artist_song
  end

  def self.genre_count
    genre_song = {}
    @@genres.each do |genre|
      if genre_song.has_key?(genre)
        genre_song[genre] +=1
      else
        genre_song[genre] = 1
      end
    end
    genre_song
  end

end
