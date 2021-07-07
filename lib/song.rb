class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
   @@count += 1
   @@genres << genre
   @@artists << artist

   @name = name
   @artist = artist
   @genre = genre
  end

  def name
    @name
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
      genre_count_hash = {}
       @@genres.uniq.each do |genre|
        genre_count_hash[genre] = 0
      end
       @@genres.each do |genre|
        genre_count_hash[genre] += 1
      end
        return genre_count_hash
    end

     def self.artist_count
      artist_count_hash = {}
       @@artists.uniq.each do |artist|
        artist_count_hash[artist] = 0
      end
       @@artists.each do |artist|
        artist_count_hash[artist] += 1
      end
        return artist_count_hash

   end
end
