require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genreCount = {}
    @@genres.each do |genre|
      if genreCount[genre]
        genreCount[genre]+=1
      else
        genreCount[genre]=1
      end
  end
    return genreCount
  end

  def self.artist_count
    artistCount ={}
    @@artists.each do |artist|
      if artistCount[artist]
        artistCount[artist]+=1
      else
        artistCount[artist]=1
      end
    end
  return artistCount
  end
end
