
require 'pry'
class Song
  attr_accessor :name, :genre, :artist
  @@count=0
  @@artists=[]
  @@genres=[]


  def initialize(name,artist,genre)
    @name=name
    @genre=genre
    @artist=artist
    @@count+=1
    @@artists<<artist
    @@genres<<genre
  end

  def self.count
    @@count
  end

  def self.artists
    artist_list=[]
    @@artists.each do |artist|
      if artist_list.include?(artist)
      else artist_list<<artist
      end
    end
    artist_list
  end

  def self.genres
    genres_list=[]
    @@genres.each do |genre|
      if genres_list.include?(genre)
      else genres_list<<genre
      end
    end
    genres_list
  end

  def self.genre_count
    genres_count={}
    @@genres.each do |genre|
      genres_count[genre]||=0
      genres_count[genre]+=1
    end

    genres_count

  end

  def self.artist_count
    artists_count={}
    @@artists.each do |artist|
      artists_count[artist]||=0
      artists_count[artist]+=1
    end

    artists_count

  end
end
