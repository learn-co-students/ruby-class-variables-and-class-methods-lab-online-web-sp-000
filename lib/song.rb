class Song 
  
attr_accessor :name, :artist, :genre 

@@count = 0 

@@artists = []
@@genres = []
def self.count 
  @@count
end

  def initialize (song_name, artist_name, genre_type)
  @artist = artist_name
  @name = song_name
  @genre = genre_type
  @@count += 1 
  @@artists << artist_name
  @@genres << genre_type
  end

def self.artists
  @@artists.uniq 
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  genre_count = {}
  @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1 
    else
      genre_count[genre] = 1 
    end
  end
  genre_count 
end

def self.artist_count
  artist_count = {}
  @@artists.each do |artist|
    if artist_count[artist]
      artist_count[artist] += 1 
    else
      artist_count[artist] = 1 
    end
  end
  artist_count
end
  
end