class Song
  
  attr_accessor :name, :artist, :genre
  
    @@count = 0
    @@genres = []
    @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1
    @@artists = @@artists.push(artist)
    @@genres = @@genres.push(genre)
  end
    
    
  def self.count
    @@count
  end
  
  def self.artists
    temp_art = []
    temp_art = @@artists.uniq
    return temp_art
  end
  
  def self.genres
    temp_gen = []
    temp_gen = @@genres.uniq
    return temp_gen
  end

  def self.genre_count
    hist_gen = {}
    @@genres.each do |x|
      if hist_gen.include?(x)
        hist_gen[x] += 1
      else
        hist_gen[x] = 1
      end
    end
    return hist_gen
  end
  
  def self.artist_count
    hist_art = {}
      @@artists.each do |x|
      if hist_art.include?(x)
        hist_art[x] += 1
      else
        hist_art[x] = 1
      end
    end
    return hist_art
  end

end
  
  