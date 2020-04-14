class Song
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  attr_accessor :name, :artist, :genre

  def self.count
    return @@count
  end

  def self.genres
   return_array = []
   @@genres.each do |e|
     if !(return_array.include?(e))
       return_array << e
     end
   end
   return_array
  end

  def self.artists
   return_array = []
   @@artists.each do |e|
     if !(return_array.include?(e))
       return_array << e
     end
   end
   return_array
  end
  def self.names
   return_array = []
   @@names.each do |e|
     if !(return_array.include?(e))
       return_array << e
     end
   end
   return_array
  end

  def self.genre_count
    return_hash = {}
    @@genres.each do |element|
      if return_hash.include?(element)
        return_hash[element] += 1
      else
        return_hash[element] = 1
      end
    end
    return_hash
  end

  def self.artist_count
    return_hash = {}
    @@artists.each do |element|
      if return_hash.include?(element)
        return_hash[element] += 1
      else
        return_hash[element] = 1
      end
    end
    return_hash
  end
end
