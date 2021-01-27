require 'pry'

class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
	  @name = name
	  @artist = artist
	  @genre = genre
		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def self.count
		@@count
	end

	def self.genres
		return @@genres.uniq
	end

	def self.artists
		return @@artists.uniq
	end

	def self.genre_count
		count = {}
		@@genres.each do |genre|
			count[genre] = @@genres.count(genre)
		end
		count
	end

	def self.artist_count
		count = {}
		@@artists.each do |artist|
			count[artist] = @@artists.count(artist)
		end
		count
	end
end
