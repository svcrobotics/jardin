class HomeController < ApplicationController
  def index
  end

  def chat_with_image
    open_ai_service = OpenAiService.new
    @response_text = open_ai_service.chat_with_image("What’s in this image?", "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Gfp-wisconsin-madison-the-nature-boardwalk.jpg/2560px-Gfp-wisconsin-madison-the-nature-boardwalk.jpg")
    
    # Use @response_text in your view or return it as JSON
  end
end
