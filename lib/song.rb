class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@genres=[]
  @@artists=[]

  def self.count
    @@count
  end

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres<<genre
    @@artists<<artist
  end

  def self.genre_count
    hash={}
    @@genres.each do |genre|
      if hash[genre]==nil
        hash[genre]=1
      else
        hash[genre]+=1
      end
    end
    hash
  end

  def self.artist_count
    hash={}
    @@artists.each do |artist|
      if hash[artist]==nil
        hash[artist]=1
      else
        hash[artist]+=1
      end
    end
    hash
  end

def self.genres
  for i in (0...@@genres.length)
    for j in (0...i)
      if @@genres[j]==@@genres[i]
        @@genres.delete_at(i)
      end
    end
  end
  @@genres
end

def self.artists
  for i in (0...@@artists.length)
    for j in (0...i)
      if @@artists[j]==@@artists[i]
        @@artists.delete_at(i)
      end
    end
  end
  @@artists
end

end
