class Song 

attr_accessor :name, :artist, :genre 

@@count = 0 
 @@artists = []
  @@genres = []

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
 final_genre_count = {}
  @@genres.collect do |genre|
    if !final_genre_count[genre] 
      final_genre_count[genre] = 1
    else
      final_genre_count[genre] += 1
   end
  end
 final_genre_count
 end

def self.artist_count
  #you have to create a new hash to store the array
 final_artist_count = {}
  #iterate through the class variable artists holding the array
  @@artists.collect do |artist|
    #use artist as the key 
    if !final_artist_count[artist] 
      #this is where you want to ask the HASH if the key artist is there or not
      final_artist_count[artist] = 1
       #if it is there, we return a key and value as 1
    else
      final_artist_count[artist] += 1
       #if it isn't there then we store the value and add 1
   end
  end
 final_artist_count #return the final hash after it has iterated through artists class variable
 end
end 
 