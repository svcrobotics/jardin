class Plante < ApplicationRecord
  belongs_to :famille

  validates :nom, presence: { message: "Le nom de la plante est obligatoire pour faciliter son identification." }, uniqueness: { case_sensitive: false, message: " doit être unique." } 

  def self.condition_ete 
    {
    'ete_royan_veranda' => 'En été à Royan dans une véranda',
    'ete_royan_interieur' => 'En été à Royan en intérieur',
    'ete_royan_exterieur'=> 'En été à Royan dans le jardin',
    'ete_paris_interieur'=> 'En été à Paris en interieur',
    'ete_paris_exterieur' => 'En été à Paris en exterieur'
  }
  end

  def self.condition_hiver
    {
    'hiver_royan_veranda' => 'En hiver à Royan dans une véranda',
    'hiver_royan_interieur' => 'En hiver à Royan en intérieur',
    'hiver_royan_exterieur' => 'En hiver à Royan dans le jardin',
    'hiver_paris_interieur' => 'En hiver à Paris en interieur',
    'hiver_paris_exterieur' => 'En hiver à Paris en exterieur'
  }
  end

  def condition_ete_human_readable
    self.class.condition_ete[self.condition_ete]
  end

  def condition_hiver_human_readable
    self.class.condition_hiver[self.condition_hiver]
  end

end
