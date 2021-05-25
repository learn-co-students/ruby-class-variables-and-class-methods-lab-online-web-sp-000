
class Song 
  attr_accessor :name, :artist, :genre
  
  @@song_count = 0 
  
  def self.count 
    @@song_count
  end
    

end
  