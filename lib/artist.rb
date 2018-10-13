
require 'pry'

class Artist
  attr_accessor :name

  @@sounds_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end

  # has many songs
  def songs
    @songs
  end 

  # takes in an argument of a song 
  # associates that song with the artist by telling the song that it belongs to that artist
  def add_song(song)
    @songs << song
    song.artist = self
    @@sounds_count += 1

  end

  # takes in an argument of a song name
  # creates a new song with it and associates the song and artist
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@sounds_count += 1
  end

  # is a class method that returns the total number of songs associated to all existing artists
  def self.song_count
    @@sounds_count
  end

end