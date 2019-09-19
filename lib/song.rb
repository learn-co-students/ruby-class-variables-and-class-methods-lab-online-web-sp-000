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
    @@artists.each do |i|
      if @@artistCount[i] == nil
        @@artistCount[i] = 1
      else
        @@artistCount[i] += 1
      end
    end
    @@artistCount
  end
  
  def self.genre_count
    @@genres.each do |i|
      if @@genreCount[i] == nil
        @@genreCount[i] = 1
      else
        @@genreCount[i] += 1
      end
    end
    @@genreCount
  end
  


end