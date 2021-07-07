require 'pry'

class Song

  attr_accessor
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @genre = genre

   @@count += 1
   @@genres << @genre
   @@artists << @artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
      @@artists.uniq!
  end

  def self.genre_count

  new_count = Hash.new

    @@genres.each do |genre|
      if new_count[genre]
       new_count[genre] += 1

      else
       new_count[genre] = 1
      end

    end
      new_count
  end


  def self.artist_count

    new_count = Hash.new

      @@artists.each do |artist|
        if new_count[artist]
         new_count[artist] += 1

        else
         new_count[artist] = 1
        end

      end
        new_count
    end


end
