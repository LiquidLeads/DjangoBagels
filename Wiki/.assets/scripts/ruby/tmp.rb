#!/usr/bin/ruby

class NotIt
	MSG = "not the script you're looking for"
	def show
		puts "This is #{MSG}."
	end
end

object = NotIt.new()
object.show