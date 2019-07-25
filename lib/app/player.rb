class Player
	attr_accessor :nom, :symbol, :ratio, :color_symbol

	#Méthode permettant de créer des players
	def initialize(user_name)
		@nom = user_name
		@symbol = ""
		@ratio = 0
		@color_symbol = nil

	end

	#Methode permettant de présenter un menu d'option pour le choix de son symbole
	def menu_symbol
	    puts "Quelle symbole souhaites-tu?"
		puts
		puts "x - choix du symbole [X]"
		puts "o - choix du symbole [O]"
		print">"
		symbol_user = gets.chomp
		while symbol_user != ("x"||"o")
	      puts "Désolé! Cette option n'est pas valide! Veuillez recommencer !!!"
	      print "> "
	      symbol_user = gets.chomp
    	break if symbol_user == "q"
    	end
	    	if symbol_user == "x" 
				return @symbol = "X"
			elsif symbol_user == "o"
			 	return @symbol = "O"	
	    	return symbol_user
	   		end
	end
 		


	#def show_state
	#	puts "#{player.name}, tu as à un ratio de victoire de #{player.ratio}%"
	#end

end
