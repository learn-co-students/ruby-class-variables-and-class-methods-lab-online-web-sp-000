class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
end

def self.count
  return @@count
end

def self.genres
  return @@genres.uniq
end

def self.artists
  return @@artists.uniq
end

def self.genre_count
  genre_counter = {}
    @@genres.each do |genre|
      if genre_counter[genre].class == Integer
        genre_counter[genre] +=1
      else
        genre_counter[genre] = 1
      end
    end
  return genre_counter
end

def self.artist_count
  artist_counter = {}
    @@artists.each do |artist|
      if artist_counter[artist].class == Integer
        artist_counter[artist] +=1
      else
        artist_counter[artist] = 1
      end
    end
  return artist_counter
end

end
