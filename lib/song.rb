class Song

attr_accessor :name, :artist, :genre
@@count=0
@@artists=[]
@@genres=[]
@@genre_count={}
@@artist_count={}

def initialize(name, artist, genre)
  @@count+=1
  @name=name
  @artist=artist
  @@artists<<artist
  @genre=genre
  @@genres<<genre
  @@genre_count=@@genres
  @@artist_count=@@artists
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
  @@genre_count.inject(Hash.new(0)) do |hash, genre|
    hash[genre]+=1
    hash
  end
end

def self.artist_count
  @@artist_count.inject(Hash.new(0)) do |hash, artist|
    hash[artist]+=1
    hash
  end
end

end
