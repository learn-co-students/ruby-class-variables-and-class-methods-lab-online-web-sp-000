class Song
  
  attr_accessor :name, :artist, :genre
  
  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  @@testing = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
    @@count += 1

    @@artist_count.update({
      artist => @@artists.count { |a| a == artist }
    })

    @@genre_count.update({
      genre => @@genres.count { |g| g == genre }
    })

  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq!
  end

  def self.count
    @@count
  end

  #expect(Song.artist_count).to eq({"Brittany Spears" => 1, "Jay-Z" => 2})
  def self.artist_count
    @@artist_count.sort.to_h
  end

  def self.genre_count
    @@genre_count.sort.to_h
  end
end


lucifer = Song.new('Lucifer', 'Jay-Z', 'rap')
ninety_nine_problems = Song.new('99 Problems', 'Jay-Z', 'rap')
hit_me = Song.new('hit me baby one more time', 'Brittany Spears', 'pop')


Song.artist_count