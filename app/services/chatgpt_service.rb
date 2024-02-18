class ChatgptService
  include HTTParty

  def initialize(message, model = 'gpt-4-vision-preview', image_url = nil)
    @api_key = Rails.application.credentials.chatgpt_api_key
    @model = model
    @message = message
    @image_url = image_url # Ajouter cette ligne
    @options = {
      headers: {
        'Content-Type' => 'application/json',
        'Authorization' => "Bearer #{@api_key}"
      }
    }
    @api_url = 'https://api.openai.com/v1/chat/completions'
  end

  def call
  body = {
    model: @model,
    messages: [
      { role: 'user', content: @message } # Message texte
      # Assurez-vous d'ajouter le message de l'image correctement ici
    ],
    max_tokens: 100
  }

  # Ajouter l'image comme un message distinct si l'URL de l'image est fournie
  if @image_url
    body[:messages] << {
      role: 'user', 
      content: [
        {
          "type": "image",
          "image_url": @image_url
        }
      ]
    }
  end

  response = self.class.post(
    @api_url, 
    body: body.to_json,
    headers: @options[:headers],
    timeout: 10
  )

  raise response.parsed_response['error']['message'] unless response.code == 200

  response.parsed_response['choices'][0]['message']['content']
end



  # Ajuster également la méthode de classe `call` pour accepter le nouvel argument
  def self.call(message, model = 'gpt-4-vision-preview', image_url = nil)
    new(message, model, image_url).call
  end
end
