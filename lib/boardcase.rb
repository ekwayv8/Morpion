#require 'pry'

class BoardCase

	attr_accessor :position , :content

	@@all_boardcase =[]

	def initialize(position_array)	
		@position = position_array
		@content = ""
		@@all_boardcase << self
	end

	
	def self.all
		return @@all_boardcase
	end

end

BoardCase.all_boardcase