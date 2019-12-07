require 'pry'

class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(namee, artist, genre)
		@name = namee
		@artist = artist
		@@artists << artist

		@genre = genre
		@@genres << genre

		@@count += 1
		# binding.pry
	end

	def self.count
		@@count
	end

	def self.artists
		@@artists.uniq!
	end

	def self.genres
		@@genres.uniq!
	end

	def self.genre_count
		genre_hash = {}
		@@genres.each { |genre|
			genre_hash[genre] ? genre_hash[genre] += 1 : genre_hash[genre] = 1
		}
		genre_hash
	end

	def self.artist_count
		artist_hash = {}
		@@artists.each { |artist|
			artist_hash[artist] ? artist_hash[artist] += 1 : artist_hash[artist] = 1
		}
		artist_hash
	end

end