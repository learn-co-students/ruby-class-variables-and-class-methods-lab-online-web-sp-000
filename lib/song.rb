require 'pry' 

class Song 
attr_accessor :name, :artist, :genre 

@@count = 0
@@artists =[]
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
   gc = {}
	 @@genres.each do |genre|
	    if gc[genre] 
			   gc[genre] += 1
			else
			   gc[genre] = 1
			end
			
	end
	gc
	end
	
def self.artist_count
   ac = {}
   @@artists.each do |artist|
     if ac[artist]
       ac[artist] += 1 
     else
       ac[artist] = 1 
     end
   end
   ac
 end
      
end



