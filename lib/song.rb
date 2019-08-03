class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@name = []
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    # genres.uniq
    # end
    genre_array = []
    @@genres.each do |element|
      if !genre_array.include?(element)
        genre_array << element
      end
    end
    genre_array
  end

  def self.artists
    # @@artists.uniq
    #end
    artists_array = []
    @@artists.each do |element|
      if !artists_array.include?(element)
        artists_array << element
      end
    end
    artists_array
  end

  def self.genre_count
    genre_hash = {}
    value = 1
    @@genres.each do |element|
      if genre_hash.include?(element)
        genre_hash [element] = value + 1
      else
        genre_hash [element] = value
      end
    end
    genre_hash
  end

    def self.artist_count
      artist_hash = {}
      value = 1
      @@artists.each do |element|
        if artist_hash.include?(element)
          artist_hash [element] = value + 1
        else
          artist_hash [element] = value
        end
      end
      artist_hash
    end
end
