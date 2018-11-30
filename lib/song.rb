class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

def initialize(name, artist, genre)
  @name =   name
  @artist = artist
  @genre =  genre
  @@count += 1
  @@artists << artist
  @@genres <<  genre
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
  @@genres.inject(Hash.new(0)) { |total, g| total[g] += 1 ;total}
end

#     #If current genre is already in genre
#       #Add one to the genre hash
#       #else if it is a new genre being added


#     #If current artist is already in artist hash
#       #Add one to the artist hash
#       #else if it is a new artist being added
#
def self.artist_count
  #set up a new array, iterate over each one and add one, get total
    @@artists.inject(Hash.new(0)) { |total, a| total[a] += 1 ;total}
  end

end
