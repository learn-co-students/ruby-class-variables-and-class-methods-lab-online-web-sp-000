class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

  def initialize(name, artist, genre)
    @@count += 1
    @name
    @artist
    @genre
  end

  def self.count
    @@count
end
