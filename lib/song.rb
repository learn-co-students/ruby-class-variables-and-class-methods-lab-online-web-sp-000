class Song
  #attr_accessor :name :artist :genre
  @@count = 0 #initialize a Class Variable set to zero
  @@genres = [] #initialize a Class Variable set to an empty array
  @@artists = [] #initialize a Class Variable set to an empty array

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 #increment count whenever a song instance is created
    @@genres << genre
    @@artists << artist
  end

  #class method below
  def self.count
    @@count
  end

  #class method below
  def self.genres
    @@genres = @@genres.uniq
  end

  #class method below
  def self.artists
    @@artists = @@artists.uniq #remove duplicates in the array by using .uniq
  end

  #class method below
  def self.genre_count
        @@genres.inject(Hash.new(0)) {|total, i| total[i] += 1; total }
  end

  def self.artist_count
        @@artists.inject(Hash.new(0)) {|total, i| total[i] += 1 ; total }
  end

end
