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
    @@genre = genre
    @@genres << @@genre
    @@count += 1
     # binding.pry
  end
  
  def self.count
    @@count
  end
  
   def self.artists
    
    @@artists.uniq!
  
  end 
  
  def self.genres
    
    @@genres.uniq!
  
  end 
 
  def self.genre_count

    genre_count = {}
    @@genres.each do |i|
      genre_count[i] = @@genres.count(i)
    end
    return genre_count
  end

  def self.artist_count

    artist_count = {}
    @@artists.each do |i|
      artist_count[i] = @@artists.count(i)
    end
    return artist_count
  end
  attr_accessor :name
end 

=begin

genre_count 
  def genre_count
@array = ["a","b","c","c"]
hash = {}
@array.each do |i|
  hash[i] = @array.count(i)
  puts hash
end
end

genre_count
  def genres                                    ## method that adds unique genre element to a genre array.  Compiles @@genre for Song class
    
    @@genre = []                                
   
   # if !@@genre.include?(genre)                 ## checks @@genre array for existence of student_grade key 
                                                ## if genre doesn't exist adds genre element to the array
   #   @@genre << genre                          ## pairs the student_name value to the student_grade key inside the roster hash 
   #   binding.pry                               ## binding.pry intercepts method here 
    # else                                        ## if student_grade key already exists
    #  @roster[student_grade] << student_name    ## pairs the student_name value to the student_grade key inside the roster hash
    end 
  end
end

name
@@name
artist
@@artist
genre
@@genres 
count
@@count
   
   
 
   def artists
     # return array of all the unique aritsts in the existing songs
   end
   
   def genre_count
     
     ## returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
   end 
   
   def artist_count
      returns a histogram similar to the one above, but for artists rather than genres.
   end 
=end 