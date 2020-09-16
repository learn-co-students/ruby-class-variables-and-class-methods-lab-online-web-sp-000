class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@artists = []
    @@genres = []
    

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre #if @@genres.none?(genre)
        @@artists << artist #if @@artists.none?(artist)
    end

    def self.count
        @@count
    end

    def self.genres
        unique_genres = []
        @@genres.each {|genre| unique_genres << genre if unique_genres.none?(genre)}
        unique_genres
    end

    def self.artists
        unique_artists = []
        @@artists.each {|artist| unique_artists << artist if unique_artists.none?(artist)}
        unique_artists
    end

    def self.genre_count
        #returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
        #  Song.genre_count
        # => {"rap" => 5, "rock" => 1, "country" => 3}
        total_in_genre = {}
        self.genres.each do |genre|
          total_in_genre[genre] = @@genres.count(genre)
        end
        total_in_genre
    end

    def self.artist_count
        artist_song_count = {}
        self.artists.each do |artist|
            artist_song_count[artist] = @@artists.count(artist)
        end
        artist_song_count
    end

end