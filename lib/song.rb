
class Song
  
  attr_accessor :artist
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = nil 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def artist_name
    if self.artist == nil 
      nil 
    else 
      self.artist.name
    end 
  end 
  
end 