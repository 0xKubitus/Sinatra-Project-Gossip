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

  def self.all
    csv_file = CSV.read("./db/gossip.csv")
    all_gossips = []

    csv_file.each do |line|
      gossip_line = Gossip.new(line[0], line[1])
      all_gossips << gossip_line
  end




end # fin classe Gossip





#binding.pry

#Gossip.new.save