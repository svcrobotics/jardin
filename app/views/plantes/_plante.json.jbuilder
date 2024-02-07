json.extract! plante, :id, :nom, :image_url, :arrosage, :origine, :rempotage, :maladie, :categorie, :temperature, :substrat, :taille, :bouturage, :created_at, :updated_at
json.url plante_url(plante, format: :json)
