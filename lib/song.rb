class Song

    attr_reader :name, :artist, :genre
    
@@count=0
@@artists=[]
@@genres=[]

    def initialize(name, artist, genre)
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

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each {|artist| artist_count[artist] += 1}
        artist_count
      end
    

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
      end
    end 
