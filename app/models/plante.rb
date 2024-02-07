class Plante < ApplicationRecord
  validates :nom, uniqueness: { case_sensitive: false, message: " doit être unique." }
  
  validates :nom, presence: { message: "Le nom de la plante est obligatoire pour faciliter son identification." }

  enum origine: {
    europe: 'Europe',
    amerique_du_sud: 'Amérique du Sud',
    amerique_du_nord: 'Amérique du Nord',
    asie: 'Asie',
    afrique_du_sud: 'Afrique du Sud',
    afrique_du_nord: 'Afrique du Nord',
    oceanie: 'Océanie'
  }

  def origine_human_readable
    self.class.origines[self.origine]
  end

  enum categorie: {
    plante_grasse: 'Plante grasse',
    cactus: 'Cactus'
  }

  def categorie_human_readable
    self.class.categories[self.categorie]
  end

end
