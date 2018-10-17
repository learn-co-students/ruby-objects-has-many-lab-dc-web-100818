require 'pry'

class Artist

attr_accessor :name

@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all << self
	end

	def songs
		Song.all.select {|song| song.artist == self}
	end

	def add_song(song)
		song.artist = self
	end

	def add_song_by_name(song)
		song = Song.new(song)
		self.add_song(song)
	end

	def self.song_count
		Song.all.length
	end
end
