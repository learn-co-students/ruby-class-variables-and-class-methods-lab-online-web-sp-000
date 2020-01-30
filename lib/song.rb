class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end #end of initialize

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    count = 1
    @@genres.each do |genre| ##iterate over @@genres array
      if genre_hash[genre] ##if genre_hash contains the current element from the @@genres array
        count += 1 ##increase count by 1
        genre_hash[genre] = count ##set the value to the key equal to current count
      else #else
        count = 1
        genre_hash[genre] = count #set the value to the key equal to current count
      end
    end
    genre_hash #return hash
  end#end of self.genre_count

  def self.artist_count
    artist_hash = {}

    count = 1
    @@artists.each do |artist|
      if artist_hash[artist]
        count += 1
        artist_hash[artist] = count
      else
        count = 1
        artist_hash[artist] = count
      end
    end
    artist_hash
  end

end
