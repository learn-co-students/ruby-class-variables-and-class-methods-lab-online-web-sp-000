class Song 
  attr_accessor :name :artist :genre 
  
  
  @@count = 0 
  
  def initialize(artist, genre)
    
    @@count += 1
    @@genre = genre
    
    @@artists = artist
    
  end
  
  def count
    @@count 
  end 
  
  def genres 
    
    @@genres = []
    if !@@genres.includes(   ## use the code from the bayside high example
   # returns array of all unique genres 
   
   def artists
     # return array of all the unique aritsts in the existing songs
   end
   
   def genre_count
     
     ## returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
   end 
   
   def artist_count
      returns a histogram similar to the one above, but for artists rather than genres.
   end 