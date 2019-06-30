class Song
 @@count = 0
 @@artists = []
 @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @@count +=1
    @@artists << artist
    @@genres << genre
  end
end
