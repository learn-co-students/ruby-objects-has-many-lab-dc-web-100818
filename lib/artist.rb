require 'pry'

class Artist 
  
  attr_accessor :songs
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    song.artist = self 
    @songs << song
    @@all << song
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end 
  
  def self.song_count
    @@all.length
  end 
  
end 