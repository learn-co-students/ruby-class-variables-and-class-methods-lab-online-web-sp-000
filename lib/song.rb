class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres.push(@genre)
    @@artists.push(@artist)

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end


  def self.genre_count
    @@genres.each do | genre |
      # @@genre_count["#{genre}"] = 1
      if @@genre_count["#{genre}"]
        @@genre_count["#{genre}"] += 1
      else
        @@genre_count["#{genre}"] = 1
      end
    end # end of genre.each
    @@genre_count
  end  # end of method

  def self.artist_count
    @@artists.each do | artist |
      # @@artist_count["#{artist}"] = 1
      if @@artist_count["#{artist}"]
        @@artist_count["#{artist}"] += 1
      else
        @@artist_count["#{artist}"] = 1
      end
    end # end of artist.each
    @@artist_count
  end  # end of method


end
