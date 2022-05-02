class ApplicationController < Sinatra::Base

  get '/' do
    erb :index # <= aller chercher le fichier index.erb rangé dans le dossier /views
  end


  get'/gossips/new/' do
    erb :new_gossip
  end

  #run! if app_file == $0 # <= exécuter le code de la classe sans avoir à écrire un ApplicationController.new.perform en bas du fichier (inutile ici car on va utiliser config.ru)

end #fin de la classe ApplicationController