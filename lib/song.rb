#test1 ninety_nine_problems1 = Song.new("99 Problems", "Jay-Z", "rap")
#test2 ninety_nine_problems2 = Song.new("99 Problems", "Jay-Z", "rap")


class Song
    @@names = []
    @@artists = []
    @@genres = []
    @@count = 0
    @@genre_count = {}
    @@artist_count = {}

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @@names.push(name)

        @artist = artist
        @@artists.push(artist)

        @genre = genre
        @@genres.push(genre)

        @@count += 1
    end

    def self.names
        @@names
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        @@genres.each do |element|
            current_count = @@genres.count{|count_element| count_element == element}
            @@genre_count[element] = current_count
        end
        @@genre_count    
    end

    def self.artist_count
        @@artists.each do |element|
            current_count = @@artists.count{|count_element| count_element == element}
            @@artist_count[element] = current_count
        end
        @@artist_count
    end
end

