class Song
attr_accessor :name, :artist, :genre


@@count = 0
@@genres = []
@@artists = []

def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

def self.count
  @@count
end

def self.genres
  @@genres = @@genres.uniq
end

def self.artists
  @@artists = @@artists.uniq
end

def self.genre_count
@@genre_count = {}
@@genres.group_by(&:itself).each do |x, y|
  @@genre_count[x] = y.count
end
@@genre_count
end

def self.artist_count
  @@artist_count = {}
  @@artists.group_by(&:itself).each do |x, y|
    @@artist_count[x]= y.count
  end
  @@artist_count
end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
Song.count
Song.genres
Song.artists
