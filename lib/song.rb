class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end
    
    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        # returns a hash of artists
        # and the number of songs that are from those artists
        # iterate through the @@artists array
        # if artist_count[key] not nil add 1 to its song count
        # add key/value pair to artist_count{}
            # else set song count to 1
            # add key/value pair to artist_count{}
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist] != nil
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end


    def self.genres
        @@genres.uniq
    end
    
    def self.genre_count
        # returns a hash of genres
        # and the number of songs that are in the genres
        # iterate through the @@genres array
        # if genre_count[key] not nil add 1 to its song count
        # add key/value pair to genre_count{}
            # else set song count to 1
            # add key/value pair to genre_count{}
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre] != nil
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end



    
    
end


