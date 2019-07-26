# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers présent dans le dossier /lib
$:.unshift File.expand_path("./../lib", __FILE__)

require 'app/player'
require 'app/boardcase'
require 'app/board'
require 'app/game'

my_game = Game.new

#first_player = Player.new("")
#other_player = Player.new("")
#my_game.its_your_turn?(first_player, other_player)