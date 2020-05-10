require 'pry'
class Song
@@count = 0
@@genres = []
@@artists = []

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@genres << @genre
  @@count += 1
  @@artists << @artist
  end

def self.count
  @@count
end

def self.genres
  # binding.pry
  totsgenre = @@genres
  dup_genres = []
  dup_genres = totsgenre.uniq
  dup_genres
end


def self.artists
  dup_artists = []
      dup_artists = @@artists.uniq
    dup_artists
end

def self.genre_count
  gene = {}
  @@genres.each do |g|
    c = @@genres.count(g)
    gene[g] = c
  end
gene
# binding.pry

end

def self.artist_count
  art = {}
  @@artists.each do |a|
  c = @@artists.count(a)
  art[a] = @@artists.count(a)
  end
  art
end

end
