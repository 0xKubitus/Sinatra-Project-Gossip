class ApplicationController < Sinatra::Base
  get '/' do
    "<html>
      <head>
        <title>The Gossip Project</title>
      </head>
      <body>
        <h1>Le site des ragots du coin !</h1>
      </body>
    </html>"
  end

  #run! if app_file == $0 # <= exécuter le code de la classe sans avoir à écrire un ApplicationController.new.perform en bas du fichier (inutile ici car on va utiliser config.ru)
end