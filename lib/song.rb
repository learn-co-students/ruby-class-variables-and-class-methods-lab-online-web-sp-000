class Song
attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.each do |item|
      if(genre_count.has_key?(item))
        cnt = genre_count[item]
        cnt += 1
        genre_count[item] = cnt
      else
        genre_count[item] = 1
      end
    end
    genre_count.keys
  end

  def self.artists
    @@artists.each do |item|
      if(artist_count.has_key?(item))
        cnt = artist_count[item]
        cnt += 1
        artist_count[item] = cnt
      else
        artist_count[item] = 1
      end
    end
    artist_count.keys
  end

  def self.artist_count
    @@artists.each do |item|
      if(@@artist_count.has_key?(item))
        cnt = @@artist_count[item]
        cnt += 1
        @@artist_count[item] = cnt
      else
        @@artist_count[item] = 1
      end
    end
    @@artist_count
  end

  def self.genre_count
    @@genres.each do |item|
      if(@@genre_count.has_key?(item))
        cnt = @@genre_count[item]
        cnt += 1
        @@genre_count[item] = cnt
      else
        @@genre_count[item] = 1
      end
    end
    @@genre_count
  end
end
