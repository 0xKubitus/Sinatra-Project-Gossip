require 'bundler'
Bundler.require 
require 'pry'
# uniquement là pour faire des tests


class Gossip

  attr_accessor :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv| # ouvrir le CSV en mode écriture (ab) (le CSV a le path: db/gossip.csv)
    csv << [@author, @content]# <= paramètres à remplacer
    end
  end






end # fin classe Gossip





#binding.pry

#Gossip.new.save