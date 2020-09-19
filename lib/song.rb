require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  #initializing all of the class variables.
  @@count = 0
  @@artists = [ ]
  @@genres = [ ]
 
  
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
    #only want to return unique values 
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
  #iterating through each of the genres in the genres array. If the genre hash hasn't been created, we create it and set it to one.
    @@genres.each do |genre|
      if @@genre_count[genre] == nil
        @@genre_count[genre] = 1
        #if the genre key already exists, we just add one to it
      elsif @@genre_count[genre] != nil
        @@genre_count[genre] += 1  
      end
    end
    @@genre_count
  end
  
  #similar to the genre_count method above
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count[artist] == nil
        @@artist_count[artist] = 1 
      elsif @@artist_count[artist] != nil
        @@artist_count[artist] += 1
      end
    end
    @@artist_count
  end

  
end