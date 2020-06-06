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
        genre_hash = {}
        @@genres.each do |g|
            if genre_hash[g] == nil
                genre_hash[g] = 1
            else
                genre_hash[g] += 1
            end
        end
        genre_hash
    end
    

    def self.artist_count
        artist_hash = {}
        @@artists.each do |a|
            if artist_hash[a] == nil
                artist_hash[a] = 1
            else
                artist_hash[a] += 1
            end
        end
        artist_hash
    end
end

=begin
Song
  #new
    takes in three arguments: a name, artist and genre
  #name
    has a name
  #artist
    has an artist
  #genre
    has a genre
  class variables
    has a class variable, @@count
    has a class variable, @@artists, that contains all of the artists of existing songs
    has a class variable, @@genres, that contains all of the genres of existing songs
  .count
    is a class method that returns that number of songs created
  .artists
    is a class method that returns a unique array of artists of existing songs
  .genres
    is a class method that returns a unique array of genres of existing songs
  .genre_count
    is a class method that returns a hash of genres and the number of songs that have those genres
  .artist_count
  =end