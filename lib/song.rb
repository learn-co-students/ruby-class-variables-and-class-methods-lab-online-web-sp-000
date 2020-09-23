class Song
  
@@count = 0
@@artists = []
@@genres = []

  
attr_accessor :name, :artist, :genre
  
def initialize(name,artist,genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
 @@artists << @artist
 @@genres << @genre
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
  genre_number = {}
  @@genres.each do |genre|
    if !genre_number[genre]
      genre_number[genre] = 1
    else 
      genre_number[genre] += 1 
    end
  end
  genre_number
end

def self.artist_count
  artist_number = {}
  @@artists.each do |artist|
    if !artist_number[artist]
      artist_number[artist] = 1 
    else
      artist_number[artist] += 1
    end
  end
  artist_number
end

end