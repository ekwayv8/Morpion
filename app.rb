# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers présent dans le dossier /lib
$:.unshift File.expand_path("./../lib", __FILE__)

require 'app/player'
require 'app/game'

