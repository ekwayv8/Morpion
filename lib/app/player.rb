class Player
	attr_accessor :nom, :symbol, :ratio, :color_symbol

	#Méthode permettant de créer des players
	def initialize(user_name)
		@nom = user_name
		@symbol = " "
		@ratio = 0
		@color_symbol = nil
	end


 		


	#def show_state
	#	puts "#{player.name}, tu as à un ratio de victoire de #{player.ratio}%"
	#end

end
