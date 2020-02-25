class Song 
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name 
    @artist = artist 
    @@artists << artist
    @genre = genre
    @@genres << genre 
  end
  
  def self.count 
    @@count 
  end
  
  def self.artists 
    artist_no_repeat = []
    @@artists.each do |artist|
      if artist_no_repeat.none?(artist)
        artist_no_repeat << artist 
      end 
    end 
    artist_no_repeat
  end 
  
  def self.genres 
    genre_no_repeat = []
    @@genres.each do |genre| 
      if genre_no_repeat.none?(genre)
        genre_no_repeat << genre 
      end 
    end
    genre_no_repeat
  end 
  
  def self.genre_count 
    genre_counter = {}
    @@genres.each do |genre|
      counter = @@genres.count(genre)
      if genre_counter.keys.none?(genre)
        genre_counter[genre] = counter 
      end
    end
    genre_counter
  end
  
  def self.artist_count
    artist_counter = {} 
    @@artists.each do |artist| 
      counter = @@artists.count(artist)
      if artist_counter.keys.none?(artist)
        artist_counter[artist] = counter 
      end
    end 
    artist_counter
  end
<<<<<<< HEAD
end
=======
end 
>>>>>>> 239f31d9745872223ffbbaf2eda8f9965ef87706
