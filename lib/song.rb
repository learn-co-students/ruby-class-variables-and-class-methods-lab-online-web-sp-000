require "pry"
class Song 
  #count - keep track of how many songs it creates
  #artists - show artists of existing songs
  #genres - show genres of existing songs
  #genre_count - keep track of how many songs per genre
  #artist_count - keep track of how many songs per artist
   @@count = 0
   
   @@genres = []
   @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  attr_accessor :name, :artist, :genre 
 
 def self.count
   return @@count
 end 
 
 def self.genres
   @single_genre = @@genres.uniq
   @single_genre
 end 
 def self.artists
   @single_artist = @@artists.uniq
   @single_artist
 end 
 def self.genre_count
   @@count2 = 0
   result = {}
   @single_genre.reverse.map do |genre|
     if !result[genre]
        @@count2 +=1
        result[genre] = @@count2
     else 
        @@count2 +=1 
      end
   end
   result
 end
#below is what directions want you to do
# def self.genre_count
#   result = {}
#   counter = 0
#   @@genres.reverse.each do |genre|
#     if !result[genre]
#       counter+=1 
#       result[genre] = counter
#     else 
#       counter +=1 
#     end
#   end 
#   result
# end 

def self.artist_count
  result = {}
  counter = 0 
  @@artists.reverse.each do |artist|
    if !result[artist]
      counter+=1 
      result[artist] = counter 
    else 
      counter += 1 
    end 
  end 
  result
end 
end 

