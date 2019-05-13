class Song
  attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
    # attr_accessor :name, :artist, :genre

    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
      @@count += 1

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
    genre_count = Hash.new(0)
    @@genres.count {|genre| genre_count[genre] += 1}
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.count {|artist|artist_count[artist] += 1}
    artist_count
  end



end
