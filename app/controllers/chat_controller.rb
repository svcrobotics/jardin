class ChatController < ApplicationController
  def ask
    # La logique pour afficher le formulaire de question
  end

  def submit
    @response = ChatgptService.call(params[:message], 'gpt-3.5-turbo')
    render :ask
  rescue StandardError => e
    @error = e.message
    render :ask
  end
end
