  class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

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
      @@artists.uniq
    end

    def self.genres
      @@genres.uniq
    end

    def self.genre_count
      genre_count = {}
      @@genres.each do |gen|
        if !genre_count.key?(gen)
        genre_count[gen] = 0
      end
        genre_count[gen] += 1
      end
        genre_count
      end

    def self.artist_count
      artist_count = {}
      @@artists.each do |art|
        if !artist_count.key?(art)
          artist_count[art] = 0
        end
          artist_count[art] += 1
        end
          artist_count
        end
      end
