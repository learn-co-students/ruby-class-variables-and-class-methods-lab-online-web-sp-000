class Song
    
    ##when a new song is created, we want to up this count (in initialize instance method)
    @@count = 0
    
    ##push all genres into this array in the initialize method,
    ##then use #genres class method to return an array of just the unique genres
    @@genres = []
    
    ##push all artists into this array in the initialize method,
    ##then use #artists class method to return an array of just the unique artists.
    @@artists = []

    attr_accessor :name, :artist, :genre
    
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        genreHist = {}
        @@genres.each do |gen|
           if genreHist.has_key?(gen)
               genreHist[gen] +=1
           else
               genreHist[gen] = 1
            end
        end
        genreHist
    end


    def self.artist_count
        artistHist = {}
        @@artists.each do |art|
            if artistHist.has_key?(art)
                artistHist[art] +=1
            else
                artistHist[art] = 1
            end
        end
        artistHist
    end

end
