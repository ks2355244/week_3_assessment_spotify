# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #
class Song
	attr_read :list
	attr_accessor :add, update, remove

	def initialize(title, artist, duration)
		@title = title
		@artist = artist
		@duration = duration
	end

	def list_song
		song = song.where(name: {" "}, artist: {" "}, duration: {" "}).order(created_at: :ascd)
	end	
	
	def add_song
		song = Song.new
		song.name = {""}
		song.artist = {""}
		song.duration = {""}
	end
	
	def update_song
		song = Song.find_by(name: {""})
		song.name = " "
		song.save
	end

	def remove_song
		song = Song.find_by(name: {""})
		song.destroy
	end	
end
end