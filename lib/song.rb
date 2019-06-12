class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    #initialize song info
    @name = name
    @artist = artist
    @genre = genre
    
    #increase song count
    @@count += 1
    
    #populate genres and artists arrays
    @@genres.push(genre)
    @@artists.push(artist)
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    array = []
    @@genres.each do |genre|
      if !array.include?(genre)  #Is it unique
        array.push(genre)   #Add it to array
      end
    end
    array   #Return array
  end
  
  def self.artists
    array = []
    @@artists.each do |artist|
      if !array.include?(artist)   #Is it unique
        array.push(artist)   #Add it to array
      end
    end
    array   #Return array
  end
  
  def self.genre_count
    genre_count_list = {}   #Initialize empty hash
    
    @@genres.each do |item|
      if !genre_count_list.key?(item)   #Is genre already in hash 
        genre_count_list[item] = 1    #Then add it to hash
      else
        genre_count_list[item] += 1   #Then increment value by 1
      end
    end
    genre_count_list    #Return hash
  end
  
  def self.artist_count
    artist_count_list = {}   #Initialize empty hash
    
    @@artists.each do |item|
      if !artist_count_list.key?(item)    #Is artist already in hash
        artist_count_list[item] = 1   #Then add it to hash
      else
        artist_count_list[item] += 1   #Then increment value by 1
      end
    end
    artist_count_list   #Return hash
  end
  
end