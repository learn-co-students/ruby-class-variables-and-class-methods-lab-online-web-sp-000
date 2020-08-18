class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  #these three can be re-assign with the attraccessor methods
  @@count += 1
  @@artists << @artist
  @@genres << @genre
end

def self.count #CLASS method
  @@count #can't use attr.. because these are not regular instnace variables
end

def self.artists #CLASS method
  uniqueartistslist = []
  @@artists.each do | artist |
    if !uniqueartistslist.include?(artist) #aka if doesn't include already
      uniqueartistslist << artist
    end
  end
  uniqueartistslist
end


def self.genres #CLASS method
  uniquegenreslist = []
  @@genres.each do | genre |
    if !uniquegenreslist.include?(genre) #aka if doesn't include already
      uniquegenreslist << genre
    end
  end
  uniquegenreslist
end

def self.genre_count #CLASS method
 tally = {}
 @@genres.each do | genre |
   if !tally.keys.include?(genre)
     tally[genre] = 1 #create genre. set to 1 ex: tally["rap"] = 1
   else
     tally[genre] += 1 #add 1
   end
 end
 tally
end

def self.artist_count #CLASS method
  tally = {}
  @@artists.each do | artist |
    if !tally.keys.include?(artist)
      tally[artist] = 1
    else
      tally[artist] += 1
    end
  end
  tally
end



end
