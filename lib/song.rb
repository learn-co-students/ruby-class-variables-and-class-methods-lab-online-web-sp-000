require "pry"
class Song
  @@count = 0
  @@genres  = []
  @@artists = []
  @@all_songs = []
  attr_accessor :name, :artist, :genre


  def initialize(name, artist, genre)
    @@count += 1
    @@artists.push(artist)
    @@all_songs.push(self)
    @@genres.push(genre)
  @name = name
    @artist = artist
  @genre = genre

end

  def self.count
    @@count
  end

  def name
    @name
  end

  def genre
   @genre
  end

  def self.artists

    @artists
    @@all_songs.collect { |song| song.artist }.uniq!
    #remove duplicates .uniq!
    #these two methods work the same
  #  al_art = []
#    @all_songs.each do |song|
#    al_art << song.artist
#    end
#      al_art.uniq!
 end
#Write a class method, .artists, that returns an array of all of the artists of the existing songs.

    def self.genres
      @genres
      @@all_songs.collect {|song| song.genre }.uniq!
end

def self.genre_count
      genre_count = {}

    @@genres.each do |genre|
   if genre_count[genre]
     genre_count[genre] += 1
   else
    genre_count[genre] = 1
  end
end
  genre_count
end




    def self.artist_count
  artist_count ={}

    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
    end
end
  artist_count
end
end
