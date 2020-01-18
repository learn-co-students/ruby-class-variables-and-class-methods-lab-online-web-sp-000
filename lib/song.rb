require "pry"
class Song
	@@count = 0
	@@artists = []
	@@genres = []
	@@genre_count_hash = {}
	@@artist_count_hash = {}

	def initialize(name, artist, genre)
		@@count += 1

		@name = name
		@artist = artist
		@genre = genre

		@@artists << @artist
			
		@@genres << @genre
			

	end

	attr_reader :name
	attr_reader :artist
	attr_reader :genre

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
		i = 0
		#count the number of appearances of each genre in the @@genres array
		#combine the array with array.count
		
		while i < @@genres.length
			@@genre_count_hash[@@genres[i]] = @@genres.count(@@genres[i])
			i += 1
		end
		@@genre_count_hash
		# @@genres.count[0]
	end

	def self.artist_count
		i = 0
		#count the number of appearances of each genre in the @@genres array
		#combine the array with array.count
		while i < @@artists.length
			@@artist_count_hash[@@artists[i]] = @@artists.count(@@artists[i])
			i += 1
		end
		@@artist_count_hash
	end
end

# binding.pry