class ChatController < ApplicationController
  # Affiche le formulaire pour poser une question.
  def ask
    # Pas besoin de logique spécifique ici si vous affichez simplement le formulaire.
  end

  # Traite la question soumise via le formulaire et affiche la réponse.
  def submit
    message = params[:message] # Votre question textuelle
    image = params[:image] # L'image téléchargée

    # Traiter l'image comme nécessaire, par exemple, en l'envoyant à un service externe pour analyse

    # Supposons que `ChatgptService.call` peut prendre une URL d'image comme argument optionnel
    @response = ChatgptService.call(params[:message], 'gpt-4-vision-preview')

    if @response
      render :ask
    else
      @error = "Impossible d'obtenir une réponse."
      render :ask
    end
  rescue StandardError => e
    @error = e.message
    render :ask
  end

end
