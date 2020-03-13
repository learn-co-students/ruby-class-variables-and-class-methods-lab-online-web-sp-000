class Song
  attr_accessor :name, :artist, :genre, :name
  # attr_reader :name
  # def self.class_variable_set(attributes,element)
  #   @@attributes = attributes
  #    @@attributes = element
  # end
  @@count = 0
  @@artists = []
  @@genres =  []
  @@genre_count = {}
  @@artist_count = {}
  @@artist = []
  @@genre = []
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre

    if @@artist_count.has_key?(artist)
      @@artist_count[artist] += 1
    else
      @@artist_count[artist] = 1
    end


    if @@genre_count.has_key?(genre)
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end
     if @@artist.include?(artist)
     else @@artist << artist
     end
     if @@genre.include?(genre)
     else @@genre << genre
     end
  @@count += 1
  @@genre_count
  @@artists
  @@genres
end
def self.count
  @@count
end
def self.genres
   @@genre
end
def self.artists
   @@artist
end
def self.genre_count
  @@genre_count
end
def self.artist_count
  @@artist_count
end

end
