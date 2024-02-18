class ChatController < ApplicationController
  # Affiche le formulaire pour poser une question.
  def ask
    # Pas besoin de logique spécifique ici si vous affichez simplement le formulaire.
  end

  # Traite la question soumise via le formulaire et affiche la réponse.
  def submit
    @response = ChatgptService.call(params[:message], 'gpt-4-vision-preview')
    # La vue :ask sera réutilisée pour afficher la réponse.
    if @response
      # Affiche la vue `ask` avec la réponse
      render :ask
    else
      # Gère les cas d'erreur ou redirige selon les besoins
      redirect_to ask_chat_path, alert: "Une erreur s'est produite."
    end
  rescue StandardError => e
    @error = e.message
    render :ask
  end

  # Un exemple supplémentaire, non lié directement au formulaire,
  # pour démontrer la génération de texte via une requête API.
  def generate_text_completion
    message = "What’s in this image?" # Message d'exemple.
    model = 'gpt-4-vision-preview' # Spécifiez le modèle à utiliser.
    generated_text = ChatgptService.call(message, model)
    render json: { generated_text: generated_text }
  rescue => e
    render json: { error: e.message }, status: :unprocessable_entity
  end
end
