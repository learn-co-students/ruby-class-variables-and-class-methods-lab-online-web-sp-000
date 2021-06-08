class Song


#firstly set the class attributes & class variables
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []


#on intialize with name, artist and genre passed in, iterate the counter,
#and add each artist and genre to thier global variable array
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << artist
      @@genres << genre

    end

#self methods to print the information from our global variables in a convenient/readable way

    def self.count
      @@count
    end

    def self.genres
       genre_list = @@genres.uniq
       genre_list
    end

    def self.artists
      artist_list = @@artists.uniq
      artist_list
    end


#create a new hash which prints out each genre from the global variable, and returns how many songs
#are associated with that genre (the size of the array b which is the value of the key value pair)
#same with artist, but its how many songs theyve written. 
    def self.genre_count
      genre_list = @@genres.group_by{ |a| a }.map{ |a, b| [a, b.size] }.to_h
      genre_list
    end

    def self.artist_count
      artist_list = @@artists.group_by{ |a| a }.map{ |a, b| [a, b.size] }.to_h
      artist_list
    end

  end
