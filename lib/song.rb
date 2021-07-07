class Song
  #attr_accessor for each initialize statement
  attr_accessor :name, :artist, :genre

  @@count = 0

  def self.count
    #shows total number of songs
    @@count
  end
  #placeholder array for all genres added to the class.
  @@genres = []

  def self.genres
    #the .uniq method is used to make sure no two genres are duplicated in the genres array
    @@genres.uniq
  end
  #placeholder array for all artists added to the class.
  @@artists = []

  def self.artists
    #the .uniq method is used to make sure no two artists are duplicated in the genres array
    @@artists.uniq
  end

  def initialize(name, artist, genre)
    #set these arguments to the attributes shown by attr_accessor
    @name = name
    @artist = artist
    @genre = genre
    #every time there's a new Song added, add the count to the class var
    @@count += 1
    #every time there's a new Song added, a genre is added. Send that new genre to the genres array
    @@genres << @genre
    #every time there's a new Song added, a new artist is added. Send that new artist to the artist array
    @@artists << @artist
  end

  def self.genre_count
    #set an empty hash for our list of songs in specific genres
    genre_count = {}
    #iterate over the genres array
    @@genres.each do |x|
      #if the genre already exists, add it to our value
      if genre_count[x]
        genre_count[x] += 1
        #if the genre does NOT exist, start our value for that new genre key at 1.
      else
        genre_count[x] = 1
      end
    end
    #return the genre_count hash, filled in with the above info.
    genre_count
  end

  def self.artist_count
    #set an empty hash for our list of songs in specific artists
    artist_count = {}
    #iterate over the artists array
    @@artists.each do |x|
      #if the current artist is already existing
      if artist_count[x]
        #add that artist's song to the total number of songs for that artist
        artist_count[x] += 1
      #if the current artist does NOT exist in the artist class var
      else
        #start a value counter for that new artist
        artist_count[x] = 1
      end
    end
    #return the artist_count hash, filled in with the above info.
    artist_count
  end

end
