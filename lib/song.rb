class Song(name, artist, genre)
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []


def initialize
  @@count += 1
  @@artist << artist
  @@genre << genre
end


def count
  @@count
end

def artists
  arr = []
  @@artists.map do |artist|
     arr << artist unless arr.include?(artist)
   end
 end

 def genres
   arr = []
   @@genres.map do |genre|
      arr << artist unless arr.include?(genre)
    end
  end

  def genre_count
    hsh = {}
    @@genres.each do |genre|
      if hsh[genre] = nil
        hsh[genre] = 1
      else
        hsh[genre] += 1
      end
    end
    hsh
  end
  
