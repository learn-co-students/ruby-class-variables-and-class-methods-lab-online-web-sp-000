
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
end


def self.count
  @@count
end

def self.artists
  arr = []
  @@artists.map do |artist|
     arr << artist unless arr.include?(artist)
   end
   arr
 end

 def self.genres
   arr = []
   @@genres.map do |genre|
      arr << genre unless arr.include?(genre)
    end
    arr
  end

  def self.genre_count
    hsh = {}
    @@genres.each do |genre|
      if hsh[genre] == nil
        hsh[genre] = 1
      else
        hsh[genre] += 1
      end
    end
    hsh
  end

  def self.artist_count
    hsh = {}
    @@artists.each do |artist|
      if hsh[artist] == nil
        hsh[artist] = 1
      else
        hsh[artist] += 1
      end
    end
    hsh
  end

end
