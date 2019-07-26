#require 'pry'

class Board

attr_accessor :boardcase_array, :count_turn
attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :content


	def initialize
	@boardcase_array = [	
	@a1 = BoardCase.new("A1","h"),
	@a2 = BoardCase.new("A2","i"),
	@a3 = BoardCase.new("A3","j"),
	@b1 = BoardCase.new("B1","k"),
	@b2 = BoardCase.new("B2","m"),
	@b3 = BoardCase.new("B3","n"),
	@c1 = BoardCase.new("C1","o"),
	@c2 = BoardCase.new("C2","p"),
	@c3 = BoardCase.new("C3","q")]
	end

#boardcase = [a1,a2,a3,b1,b2,b3,c1,c2,c3]

	
	#Méthode qui permet de créer un tableau de jeu
	def board_show

	#@boardcase_array[0].content = content
	#@boardcase_array[1].content = content
	#@boardcase_array[2].content = content
	#@boardcase_array[3].content = content
	#@boardcase_array[4].content = content
	#@boardcase_array[5].content = content
	#boardcase_array[6].content = content
	#@boardcase_array[7].content = content
	#@boardcase_array[8].content = content
		puts @boardcase_array[0].position
		puts @boardcase_array[0].content
	  puts row = ["   " " 1 " "|" " 2 " "|" " 3 "]
	  puts row = [" A " " #{@boardcase_array[0].content} " "|" " #{@boardcase_array[1].content} " "|" " #{@boardcase_array[2].content} "]
	  puts separator= "-"*15
	  puts row = [" B " " #{@boardcase_array[3].content} " "|" " #{@boardcase_array[4].content} " "|" " #{@boardcase_array[5].content} "]
	  puts separator= "-"*15
	  puts row = [" C " " #{@boardcase_array[6].content} " "|" " #{@boardcase_array[7].content} " "|" " #{@boardcase_array[8].content} "]
	end
end
