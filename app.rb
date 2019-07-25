# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers présent dans le dossier /lib
$:.unshift File.expand_path("./../lib", __FILE__)

require 'app/player'
require 'app/boardcase'

a1 = BoardCase.new("A1")
a2 = BoardCase.new("A2")
a3 = BoardCase.new("A3")
b1 = BoardCase.new("B1")
b2 = BoardCase.new("B2")
b3 = BoardCase.new("B3")
c1 = BoardCase.new("C1")
c2 = BoardCase.new("C2")
c3 = BoardCase.new("C3")


binding.pry

puts "WELCOME"
puts "-"*50
puts "Quel est le nom du 1er joueur?"
print">"
user_1 = gets.chomp

player1 = Player.new(user_1)

player1.menu_symbol
player1.menu_choice_symbol(player1.ask_symbol)


puts "Bienvenue à toi #{player1.name}. Tu évolueras avec le symbole #{player1.symbol}"



puts "Quel est le nom du 2ème joueur?"
print">"
user_2 = gets.chomp
player2 = Player.new(user_2)


#Affeectation du symbole automatiquement au player2
if player1.symbol == "X" 
	return player2.symbol = "O"
elsif player1.symbol == "O" 
	return player2.symbol = "X"
end

puts "Bienvenue à toi #{user_2}.Tu évolueras avec le symbole #{player2.symbol}"

