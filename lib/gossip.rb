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
    all_gossips = []

    CSV.read("./db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end


  def self.find(id)
    Gossip.all.each_with_index {|gossip, index|
      return gossip if index + 1 == id.to_i
    }
  end



end # fin classe Gossip





#binding.pry

#Gossip.new.save