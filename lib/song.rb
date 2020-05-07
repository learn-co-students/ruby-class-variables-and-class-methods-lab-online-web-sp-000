class Song 

  @@count = 0 
  @@artists = []
  @@genres = []

attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    @@count+=1 #Show us all of the artists of existing songs 
    @name = song_name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end
  
  def self.count #Show us artists of all existing songs 
    @@count 
  end
  
  def self.artists
    @@artists.uniq 
  end
  
  def self.genres #Show us artists of all of the genres of existing songs 
    @@genres.uniq #Change to unique only here
  end

  def self.genre_count #Return hash of genres and # of songs
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre]+=1
      else genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count #Show us the number of artists for each song/Add to artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist]+=1 
      else artist_count[artist] = 1 
      end
    end
    artist_count
    end
end