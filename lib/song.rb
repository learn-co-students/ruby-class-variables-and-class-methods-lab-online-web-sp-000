class Song

  @@genres = []
  @@artists = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}
  attr_writer :name
  attr_reader :name

  def initialize(name, artist, genre)
    @name = name
    self.artist=(artist)
    self.genre=(genre)
    @@count += 1
  end

  def artist=(input)
    @artist = input
    @@artists << input
  end

  def artist
    @artist
  end

  def self.artists
    rArray = []
    @@artists.each do | artist |
      if !(rArray.include?(artist))
        rArray << artist
        @@artist_count[artist] = 1
      else
        @@artist_count[artist] += 1
      end
    end
    return rArray
  end

  def self.artist_count
    @@artists.each do | art |
      hasAlready = false
      @@artist_count.each do | artistInCount , value |
        if (art == artistInCount)
          hasAlready = true
        end
      end
      if !(hasAlready)
        @@artist_count[art] = 1
      else
        @@artist_count[art] += 1
      end
    end
    return @@artist_count
  end

  def genre=(input)
    @genre = input
    @@genres << input
  end

  def genre
    @genre
  end

  def self.genres
    rArray = []
    @@genres.each do | gen |
      if !(rArray.include?(gen))
        rArray << gen
        @@genre_count[gen] = 1
      else
        @@genre_count[gen] += 1
      end
    end
    return rArray
  end

  def self.genre_count
    @@genres.each do | gen |
      hasAlready = false
      @@genre_count.each do | genreInCount , value |
        if (gen == genreInCount)
          hasAlready = true
        end
      end
      if !(hasAlready)
        @@genre_count[gen] = 1
      else
        @@genre_count[gen] += 1
      end
    end
    return @@genre_count
  end

  def name=(input)
    @name = input
  end

  def name
    @name
  end

  def self.count
    return @@count
  end

end
