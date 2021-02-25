class Song
attr_accessor :name, :artist, :genre
 #setting class variables
 @@count = 0
 @@genres = []
 @@artists = []

def initialize(name, artist, genre)
  #adding to class variable counter
  @@count += 1

  #giving new instance's properties
  @name = name
  @artist = artist
  @genre = genre
  @@genres << genre
  @@artists << artist
end

#method to count songs
def self.count
 @@count
end

#method to return array of unique genres
def self.genres
  #use uniq method to remove duplicates and return saved array
  @@genres.uniq!
end

#method to return array of unique artists
def self.artists
  @@artists.uniq!   #use uniq method to remove duplicates and return saved array
end

#method to return genre hash
def self.genre_count
  genre_count = {}
  @@genres.each do | genre |
    if genre_count[genre] #if the genre is already in the hash
      genre_count[genre] += 1
    else #if it's a new genre
      genre_count[genre] = 1
  end
end
  genre_count # return hash
end

#method to return artist hash
def self.artist_count
  artist_count = {}
  @@artists.map do | artist |
    if artist_count[artist] #if the artist is already in the hash
      artist_count[artist] += 1
    else #if it's a new artist
      artist_count[artist] = 1
  end
end
artist_count #return hash
end

end # end of class
