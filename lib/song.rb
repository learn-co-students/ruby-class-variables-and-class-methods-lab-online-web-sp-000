class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    # add_unless(@@genres, genre)
    @@genres << genre
    # add_unless(@@artists, artist)
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    self.unique(@@genres)
  end

  def self.unique(class_variable)
    unique_obj = []
    class_variable.each do |obj|
      unique_obj << obj unless unique_obj.include?(obj)
    end
    unique_obj
  end

  def self.artists
    self.unique(@@artists)
  end

  def self.genre_count
    # @@genres.group_by {|x| x}
    self.thing_count(@@genres)
  end

  def self.artist_count
    # @@artists.group_by {|x| x}
    self.thing_count(@@artists)
  end

  def self.thing_count(class_variable)
    count_hash = {}
    class_variable.each do |obj|
      if count_hash[obj] == nil
        count_hash[obj] = 1
      else
        count_hash[obj] += 1
      end
    end
    count_hash
  end

end
