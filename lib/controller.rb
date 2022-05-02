require_relative "gossip"

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index # <= aller chercher le fichier index.erb rangé dans le dossier /views
  end

  # ici on va indiquer quel view afficher lorsque le user clique sur le lien menant vers /gossips/new :
  get'/gossips/new/' do
    erb :new_gossip
  end


  # paramétrer la route POST en sortie pour la création de nouveau gossip :
  post '/gossips/new/' do
    puts "Si ce programme fonctionne, tu devrais trouver un gossip dans le fichier 'gossip.csv' "
    Gossip.new(les_entrées_du_gossip).save
  end


  












  #run! if app_file == $0 # <= exécuter le code de la classe sans avoir à écrire un ApplicationController.new.perform en bas du fichier (inutile ici car on va utiliser config.ru)

end #fin de la classe ApplicationController

Gossip.new.save