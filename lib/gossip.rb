require 'bundler'
Bundler.require 
require 'pry'
# uniquement là pour faire des tests


class Gossip

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv| # ouvrir le CSV en mode écriture (ab) (le CSV a le path: db/gossip.csv)
    csv << ["Mon super auteur", "Ma super description"]# <= paramètres à remplacer
    end
  end






end # fin classe Gossip





#binding.pry

#Gossip.new.save