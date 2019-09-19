class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@uniqueArtists = []
  @@unigeGenres = []
  @@artistCount = {}
  @@genreCount = {}
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end
    

  def self.count
    @@count
  end
  
  def self.artists
    @@artists.each do |i|
      @@uniqueArtists.push(i) unless @@uniqueArtists.include?(i)
    end
    @@uniqueArtists
  end
  
  def self.genres
    @@unigeGenres = []
    @@genres.each do |i|
      @@unigeGenres.push(i) unless @@unigeGenres.include?(i)
    end
    @@unigeGenres
  end
  
  def self.artist_count
    @@artists.length
  end
  
  def self.genre_count
    @@genres.count
  end
end

# array = ["Jay-Z", "Jay-Z", "Brittany Spears"]

# hash = {}

# array.each do |i| 
#   if hash[i] = nil
#     hash[i] = 1
#   else
#     hash[i] = +1
# end

names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]
counts = {}


counts_two = Hash.new(0)

names.each {|i| counts_two[i] += 1}

names.each do |i|
  if counts[i] == nil
    counts[i] = 1
  else
    counts[i] += 1
  end
end

print counts
print counts_two

# print hash