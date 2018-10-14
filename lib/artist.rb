require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs       #the artists songs
    @songs
  end

  def add_song(song)
    songs << song         # "Dammit" is now pushed to the artist "Blink 182"'s songs array
    song.artist = self    # We are setting "Blink 182" (the instance of the artist) to "Dammit". artist ( a attribute of the song)
  end

  def add_song_by_name(name)
    song = Song.new(name) # creating a new song and assigning it a variable ex. "song" = "Dammit"
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end
end
