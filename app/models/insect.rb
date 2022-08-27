class Insect < ApplicationRecord
  TYPES = ["Aptérygotes", "Blattoptères", "Coléoptères", "Dermaptères", "Diptères", "Embioptères", "Éphéméroptères", "Grylloblattoptères", "Hémiptères", "Hyménoptères", "Blattoptères", "Lépidoptères", "Mantophasmatoptères", "Mantoptères", "Mécoptères", "Mégaloptères", "Neuroptères", "Odonates", "Orthoptères", "Phasmatoptères", "Phthiraptères", "Plécoptères", "Psocoptères", "Raphidioptères", "Siphonaptères", "Strepsiptères", "Thysanoptères", "Thysanoures", "Trichoptères", "Zoraptères"]

  belongs_to :user

  has_many_attached :photos
end
