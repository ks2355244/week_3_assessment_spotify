# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #
# class Playlist
# 	attr_reader :list
# 	attr_accessor :add #update, remove

# 	def initialize(title, artist, duration)
# 		@title = title
# 		@artist = artist
# 		@duration = duration
# 	end

# 	def self.list
# 		song = song.where(title: " ", artist: " ", duration: " ").order(created_at: :ascd)
# 		Song.all
# 	end	


	
# 	# def add
# 	# 	song = Song.new
# 	# 	song.title = ""
# 	# 	song.artist = ""
# 	# 	song.duration = ""
# 	# end
	
# 	# def update
# 	# 	song = Song.find_by(title: "")
# 	# 	song.title = " "
# 	# 	song.save
# 	# end

# 	# def remove
# 	# 	song = Song.find_by(title: "")
# 	# 	song.destroy
# 	# end	
# end
ARGV[0]

array = []

Song.all.each do |song|
	array << song.id
end
# p Song.all
counter = 1
if ARGV[0] == "--list"
	Song.all.each do |song|
		puts "#{counter}. #{song.title}"
		counter += 1
	end

elsif ARGV[0]== "--update"
	

elsif ARGV[0]== "--add"
	Song.create(title: ARGV[1], artist: ARGV[2], duration: ARGV[3])

elsif ARGV[0]== "--delete"
	Song.destroy(array[ARGV[1].to_i - 1])
end



