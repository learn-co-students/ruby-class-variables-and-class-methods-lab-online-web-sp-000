class Song

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        @@artists << artist
        @@genres << genre
        @@all << self
        @@count += 1
    end

    @@all = []
    def self.all
        @@all
    end

    @@count = 0
    def self.count
        @@count
    end

    @@artists = []
    def self.artists
        @@artists.uniq
    end

    # array = [0, 1, 2, 3]
    # hash = Hash[array.collect { |index| [index, ""] } ]
    # hash = Hash[array.collect { |index| [index, (index = @@all.artist).count } ]

    def self.artist_count 
        artist_count = {}
        @@artists.each do |artist|
            if !artist_count[artist]
                artist_count[artist] = 1
            else
                artist_count[artist] += 1
            end
        end
        artist_count
    end

    @@genres = []
    def self.genres
        @@genres.uniq
    end
    
    def self.genre_count 
        genre_count = {}
        @@genres.each do |genre|
            if !genre_count[genre]
                genre_count[genre] = 1
            else
                genre_count[genre] += 1
            end
        end
        genre_count
    end

end

