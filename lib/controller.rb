require_relative "gossip"

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index, locals: {gossips: Gossip.all} # <= aller chercher le fichier index.erb rangé dans le dossier /views
  end

  # ici on va indiquer quel view afficher lorsque le user clique sur le lien menant vers /gossips/new :
  get'/gossips/new/' do
    erb :new_gossip
  end


  # paramétrer la route POST en sortie pour la création de nouveau gossip :
  post '/gossips/new/' do
    puts "Si ce programme fonctionne, tu devrais trouver un gossip dans le fichier 'gossip.csv' "
    puts "Salut, je suis dans le serveur"
    puts "Ceci est le contenu du hash params : #{params}"
    puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
    puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end


  get '/gossips/:id' do #ici on déclare ':id' comme variable d'URL dynamique
    erb :show, locals: {gossip: Gossip.find("#{params['id']}"), gossipID: "#{params['id']}"} # ici on lie le n° du potin à la page show via le GossipID (cf. show.erb)
  end









  #run! if app_file == $0 # <= exécuter le code de la classe sans avoir à écrire un ApplicationController.new.perform en bas du fichier (inutile ici car on va utiliser config.ru)

end #fin de la classe ApplicationController

