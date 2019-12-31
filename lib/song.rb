class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  # returns total number of songs created
  def self.count
    @@count
  end

  # returns a unique array of artists of existing songs
  def self.artists
    @@artists.uniq
  end

  # returns an array of all of the genres of existing songs.
  # This array should contain only unique genres––no duplicates!
  def self.genres
    @@genres.uniq
  end

  # returns a hash of genres and the number of songs that have those genres
  # ex: => {"rap" => 5, "rock" => 1, "country" => 3}
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else genre_count[genre] = 1
      end
    end
    genre_count
  end

  # returns a hash of artists and the number of songs that have those artists
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end


end
