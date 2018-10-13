

class Song 
  @@all = []

  attr_accessor :name, :artist

  # is a class method that returns an array of all song instances that have been created
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  # knows the name of its artist
  # returns nil if the song does not have an artist
  def artist_name 
    if @artist == nil
      return nil
    end 
    @artist.name
  end 
end