class Plante < ApplicationRecord
  belongs_to :famille

  validates :nom, uniqueness: { case_sensitive: false, message: " doit être unique." }
  
  validates :nom, presence: { message: "Le nom de la plante est obligatoire pour faciliter son identification." }

end
