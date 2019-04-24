class Song

  @@count = 0
  @@artists=[]
  @@genres=[]
  attr_accessor :albums
  attr_reader :name, :artist, :genre


  @album_count = 0
  @albums = []

  def initialize(name, artist, genre)
    @name =name
    @artist =artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

  def selfs
    @album_count.size
  end

  def name=(name)
    @name =name
  end

  def name
    @name
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
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] = 0 if genre_count[genre].nil?
      genre_count[genre] += 1
    end
    return genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] = 0 if artist_count[artist].nil?
      artist_count[artist] += 1
    end
    return artist_count
  end
end
