class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist.nil? #checking to see if an artist attribute exists in the song
      return nil #returning nil as requested by the test
    else
      self.artist.name
    end
  end
end
