class Song
  attr_accessor :artist, :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.add_song_by_name(name)
    song = self.new
    song.name = name
    self.all << song
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
