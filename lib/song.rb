class Song
#attr_accessor :@@count , :@@artists, :@@genres
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.count
    @@count
  end

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end
end
