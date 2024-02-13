class Question
  include ActiveModel::Model
  attr_accessor :content, :response

  def ask
    client = OpenAI::Client.new(access_token: Rails.application.credentials.openai[:access_token])
    response = client.completions(
      engine: "gpt-4", # Ou "gpt-4" selon votre accès
      parameters: {
        prompt: self.content,
        max_tokens: 100
      }
    )
    self.response = response["choices"].first["text"]
  end
end
