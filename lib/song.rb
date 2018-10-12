class Song

  def initialize(name)
    @name = name
    self.class.all << self
  end

  @@all = []
  attr_accessor :name, :artist, :all

  def self.all
    @@all
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
