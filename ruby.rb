#!/usr/bin/ruby

class Hello
	
	def initialize
		@message = "Hello World!"
	end
	
	def say_hi
		puts @message
	end
	
end

h = Hello.new
h.say_hi
