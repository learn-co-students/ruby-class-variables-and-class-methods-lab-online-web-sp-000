class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  
  @@artists = []
  
  @@genres = []
  
  @@genre_count = {}
  
  @@artist_count = {}
  
  def initialize(name, artists, genres)
    @@count += 1 
    @@artists << artists
    @@genres << genres
    @name = name
    @artist = artists
    @genre = genres
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre]
        @@genre_count[genre] += 1 
      else
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end 
  
  
  
  
  
end 