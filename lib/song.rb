require 'pry'
class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

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

  def self.genres
      @@genres.uniq
    end

    def self.genre_count
      array = {}
      @@genres.each do |song|
        array[song] || array[song] = 0 
        array[song] += 1
    end
    array 
  end

    def self.artists
      @@artists.uniq
    end

    def self.artist_count
      @@artists.each_with_object(Hash.new(0)) do |artist, songs| 
        songs[artist] += 1
      end
    end
  end

# Song.count
# Song.artists
# Song.genres
