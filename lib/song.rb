require 'pry'

class Song
 attr_accessor :name, :artist, :genre, :artists, :genres 
 @@count = 0 
@@artists = []
@@artists_count = {}
@@genre_count = {}

def initialize(name, artist, genre)
     @@genres= genres  
     @@artists= artists 
    @name= name
    @artist= artist 
    @genre= genre  
    @@count +=1
     end 


def self.count
  #return "Total count of songs is #{self.count}" 
  return @@count 
end 

 def self.genres 
   @@genres << @genre 
    return @@genres.uniq 
    end 
    
    
  def self.artists
    @@artists << @artist 
    return @@artists.uniq 
    end 


def self.artists_count
    @@artists.each do |artist|
      if !artists_count[artist] 
        artists_count[artist] = 1
      else 
      end 
    end 
  end 
  
   def self.genre_count
      @@genre.each do |genre|
        if !genre_count[genre]
        genre_count[genre] = 1
        else 
          genre_count[genre] += 1 
        end
    end
  end
end 


# Class variables should be defined in the top level of the class so any code inside of the class will have access to that variable.

# So this first error is telling us we need a class variable called @@artists defined in this class, not within a method that's within the class.

# do I still leave it in the initialize method?

# Write a class method, .artists, that returns an array of all of the artists of the existing songs. This array should only contain unique artists––no repeats! Once again think about what you need to do to implement this behavior.

#     You'll need a class variable, let's call it @@artists, that is equal to an empty array.
#     When should you add artists to this array? Whenever a new song is intialized. Your #initialize method should add artists to the @@artists array. All artists should be added to the array. Control for duplicates when you code your .artists class method, not when you add artists to the original @@artists array. We will want to know how many songs each have been assigned to each artist. We'll revisit that job a little later on when we write our .artist_count method.

# The instructions here are pertaining to the .artists method but they indicate that we need to set up some other things for this method to work

# 1) we need a class variable @@artists and it tells us what that should be  assigned to

# 2) it tells us what we should do with that variable within the initialize method as