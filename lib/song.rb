# class Song 
  
#   attr_accessor :name, :artist, :genre
  
#   @@count = 0
#   @@artists = []
#   @@genres = []

#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@count += 1
#     @@genres << genre
#     @@artists << artist
#   end
  
#   def self.count
#     @@count
#   end
  
#   def self.artists
#     @@artists.uniq
#   end
  
#   def self.genres
#     @@genres.uniq
#   end
  
#   def self.genre_count
#     genre_count = {}
#     @@genres.each do |genre|
#       if genre_count[genre]
#         genre_count[genre] += 1
#       else 
#         genre_count[genre] = 1
#       end
#     end
#     genre_count
#   end
  
#   def self.artist_count
#     artist_count = {}
#     @@artists.each do |name|
#       if artist_count[name]
#         artist_count[name] += 1
#       else 
#         artist_count[name] = 1
#       end
#     end
#     artist_count
#   end
  
#   # def self.artist_count
#   #   @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
#   # end
  
# end


# # names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]
# # counts = Hash.new(0)
# # names.each { |name| counts[name] += 1 }

# # ary = [1, 2, 4, 2]
# # ary.count #=> 4
# # ary.count(2) #=> 2
# # ary.count { |x| x % 2 == 0 } #=> 3

# # names.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}

# # counts = Hash.new 0

# # words.each do |word|
# #   counts[word] += 1
# # end

# names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]
# counts = Hash.new(0)
# names.each { |name| counts[name] += 1 }

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_count = Hash.new(0)
    @@genres.each { |genre| genre_count[genre] += 1}
    return genre_count
  end
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each { |artist| artist_count[artist] += 1}
    return artist_count
  end
  
end