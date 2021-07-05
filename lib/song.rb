class Song 
  
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(song, artist, genre)
    @@count += 1 
    @@artists << artist
    @@genres << genre 
    @name = song
    @artist = artist
    @genre = genre
  end
  
  def self.count
    return @@count
  end
  
  def self.genres
    genre_list = []
    @@genres.each do  |genre|  
      if genre_list.include?(genre) == false 
        genre_list << genre
      end
    end
    return genre_list
  end
  
  def self.artists
    artist_list = []
    @@artists.each do |artist|
        if artist_list.include?(artist) == false
          artist_list << artist
        end
      end
      return artist_list
    end
    
    
    def self.genre_count
      genre_hash = {}
      @@genres.each do  |genre|  
        if genre_hash.has_key?(genre) ==  false
          genre_hash[genre] = 1 
        else
          genre_hash[genre] += 1
        end
      end
      return genre_hash
    end
    
       
    def self.artist_count
      artist_hash = {}
      @@artists.each do  |artist|  
        if artist_hash.has_key?(artist) ==  false
          artist_hash[artist] = 1 
        else
          artist_hash[artist] += 1
        end
      end
      return artist_hash
    end
    
    
    
end