class Game

	attr_accessor :win, :statut
	
	def initialize
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
	puts "-"*50
	puts
	end









	def test
	board = Board.new
	player_1 = Player.new("Franck")
	player_2 = Player.new("Yvon")
	statut = ["Pas commencé","en cours","fini"]
	
	puts "Bienvenue"
	puts player_1.nom
	puts player_2.nom
	puts "Quel joueur doit jouer?"
	first_player = gets.chomp
	puts first_player

		if first_player == player_1.nom
		first_player = player_1
		other_player = player_2
		elsif first_player == player_2.nom
		first_player = player_2
		other_player = player_1

		puts statut[0]
		end
	end
	

	def its_your_turn? 
		if boardcase.count(first_player.symbol) > boardcase.count(other_player.symbol)
		player_turn = other_player
		puts "C'est au tour de #{other_player.name}"
		else
		player_turn = first_player
		puts "C'est au tour de #{first_player.name}"
		return player_turn
		end
	end


end