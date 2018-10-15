require 'pry'

class Artist
	attr_reader :name

	@@all = []
	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end
    
    def self.all
    	@@all
    end

	def add_song(song)
      @songs << song
      song.artist = self
	end

	def songs
	 @songs
	end

	def add_song_by_name(name)
		song = Song.new(name)
         song.artist = self
          @songs << song
      #binding.pry
      
	end

	def self.song_count
		Song.all.count
		#binding.pry


	end

	


end