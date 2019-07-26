class Game

	attr_accessor  :statut, :actual_array
	
	def initialize
	my_board = Board.new
	@actual_array = my_board.boardcase_array
	#@other_player = other_player
	#@first_player = first_player
	@statut = ["Pas commencé","en cours","fini"]
	puts "WELCOME"
	puts "-"*50
	puts "Quel est le nom du 1er joueur?"
	print"> "
	user_1 = gets.chomp
	player_1 = Player.new(user_1)

    puts "Quelle symbole souhaites-tu?"
	puts
	puts "x - choix du symbole [X]"
	puts "o - choix du symbole [O]"
	print"> "
	symbol_user = gets.chomp

		while symbol_user != "o" && symbol_user != "x"
		puts "Désolé! Cette option n'est pas valide! Veuillez recommencer !!!"
     	print "> "
		symbol_user = gets.chomp
		break if symbol_user == "q"
		end

    if symbol_user == "x" 
		player_1.symbol = "X"		
	elsif symbol_user == "o"
		player_1.symbol = "O"
   	end

	puts "Bienvenue à toi #{player_1.nom}. Tu évolueras avec le symbole #{player_1.symbol}"
	puts
	puts "-"*50
	puts "Quel est le nom du 2ème joueur?"
	print"> "
	user_2 = gets.chomp
	player_2 = Player.new(user_2)

	if player_1.symbol == "X" 
		player_2.symbol = "O"
	elsif player_1.symbol == "O" 
		player_2.symbol = "X"
	end

	puts "Bienvenue à toi #{user_2}.Tu évolueras avec le symbole #{player_2.symbol}"
	puts
	puts "-"*50
	puts
	puts statut[0]
	puts
	#my_board.boardcase_array.each do |i|
	#puts i.position
	#end
	puts my_board.board_show
	puts
	puts "-"*50
	puts
	puts "D'ailleurs qui voulez-vous faire commencer entre #{player_1.nom} et #{player_2.nom} ?"
	puts
	puts "Tapez 1 pour #{player_1.nom}"
	puts "Tapez 2 pour #{player_2.nom}"
	print"> "
	first_player = gets.chomp
		while first_player != "1" && first_player != "2"
			puts "Désolé! Cette option n'est pas valide! Veuillez recommencer !!!"
	     	print "> "
			first_player = gets.chomp
			break if first_player == "q"
		end	

	#def tesing_player
		if first_player == "1"
		first_player = player_1
		other_player = player_2
		elsif first_player == "2"
		first_player = player_2
		other_player = player_1
		end
	#	puts first_player.symbol
	#	puts other_player.symbol
	#	my_board.boardcase_array
		puts my_board.boardcase_array[0].content
		puts my_board.boardcase_array[4].content
		#puts first_player
		#end
		
		#def its_your_turn?
		if my_board.boardcase_array.select {|i| i.content = first_player.symbol} > my_board.boardcase_array.select {|i| i.content = other_player.symbol}
		#player_turn = other_player
		#puts "C'est au tour de #{other_player.nom}"
		#else
		#player_turn = first_player
		#puts "C'est au tour de #{first_player.nom}"
		#end
		#puts player_turn.symbol
		end


		#def one_tour
		puts
		puts "Veuillez sélectionner une case dans le tableau ci dessus"
		puts "Entrez la lettre puis le numéro de la case"
		puts my_board.boardcase_array[0].content
		puts my_board.board_show


	end
end