class ChatController < ApplicationController
  # Affiche le formulaire pour poser une question.
  def ask
    # Pas besoin de logique spécifique ici si vous affichez simplement le formulaire.
  end

  # Traite la question soumise via le formulaire et affiche la réponse.
  def submit
    message = params[:message] # Votre question textuelle
    image_url = params[:image_url] # L'image 

    @response = ChatgptService.call(message, 'gpt-4-vision-preview', image_url)

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
