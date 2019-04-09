require 'pry'


class Song 
@@count = 0 
@@artists = []
@@genres = [] 

attr_accessor :name, :artist, :genre 

def initialize(song_name, artist, genre)
  @name = song_name
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

def self.artists 
  @@artists.uniq 
end 

def self.genre_count 
  genre_hash = {}
   
  @@genres.each do |genre|
    # check if artist already a key 
    # increment count if it exists 
    if genre_hash.key?(genre) 
      genre_hash[genre] = genre_hash[genre] + 1 
    # add genre key, initial count is 1 
    else 
      genre_hash[genre] =  1
    end 
  end 
  #binding.pry
  return genre_hash
end 

def self.artist_count
  artist_hash = {}
  
    @@artists.each do |artist|
    # check if artist already a key 
    # increment count if it exists 
    if artist_hash.key?(artist) 
      artist_hash[artist] = artist_hash[artist] + 1 
    # add artist key, initial count is 1 
    else 
      artist_hash[artist] =  1
    end 
  end 
  #binding.pry
  return artist_hash
  
end 
end 

