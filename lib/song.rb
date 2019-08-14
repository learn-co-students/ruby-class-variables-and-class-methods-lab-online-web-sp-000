class Song
  @@count = 0
  @@genre = "Rock"
  @@artist = "David Bowie"
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :song, :artist, :genre
  def initialize(song, artist, genre)
    @song = song
    @@song = song
    @artist = artist
    @@artist = artist
    @genre = genre
    @@genre = genre
    @@count+=1
    if @@artists.include?(@@artist) == false
      @@artist_count[@@artist] = 1
      @@artists << @@artist
    else
      @@artist_count[@@artist] +=1
      @@artists << @@artist
    end
    if @@genres.include?(@@genre) == false
      @@genre_count[@@genre] = 1
      @@genres << @@genre
    else
      @@genre_count[@@genre] +=1
      @@genres << @@genre
    end
  end
  
  def name 
    @song
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
    @@genres.length
  end
  
  def self.artist_count
    @@artist_count
  end
  
  def self.genre_count
    @@genre_count
  end
end

hysteria = Song.new("Hysteria", "Def Leppard", "Rock")
back_in_black = Song.new("Back in Black", "AC/DC", "Rock")
country_roads = Song.new("Take Me Home, Country Roads", "John Denver", "Country")
juicy = Song.new("Juicy", "Notorious BIG", "Rap")
armageddon_it = Song.new("Armageddon It", "Def Leppard", "Rock")
pokerface = Song.new("Pokerface", "Lady Gaga", "Pop")
beat_it = Song.new("Beat It", "Michael Jackson", "Pop")
puts Song.count
print Song.artists
print Song.genres
print Song.genre_count
puts Song.artist_count
