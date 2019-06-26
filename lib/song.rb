class Song
  attr_accessor :name, :artist, :genre

  @@count = 0                           #Class Variable counter initialization
  @@artists = []                        #initialization of our arrays
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres<< genre
    @@artists << artist                 #add created artists to our artists array

  end

  def self.count                #ALL class methods have self. in it
    return @@count
  end

  def self.genres
    return @@genres.uniq        #uniq method returns unique genres only
  end

  def self.artists
    return @@artists.uniq       #returns an array of only unique artists
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
    return artist_count
  end

  def self.genre_count
    genre_count = {}              #init genre_count hash
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1    #add to existing genre in hash
      else
        genre_count[genre] = 1    #add new genre
      end
    end
    return genre_count            #returns our hash
  end
end
