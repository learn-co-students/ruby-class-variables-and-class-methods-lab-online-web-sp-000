class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}

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
    genre_count[@@genre] = @@count
  end
end


def sort
   sorted_students = []
   result = {}
   @roster.each do | grade, students|
     sorted_students = students.sort
     result[grade] = sorted_students
   end
   result
 end
