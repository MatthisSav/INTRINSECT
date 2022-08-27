class Insect < ApplicationRecord
  TYPES = ["Aptérygotes", "Blattoptères", "Coléoptères", "Dermaptères", "Diptères", "Embioptères", "Éphéméroptères", "Grylloblattoptères", "Hémiptères", "Hyménoptères", "Blattoptères", "Lépidoptères", "Mantophasmatoptères", "Mantoptères", "Mécoptères", "Mégaloptères", "Neuroptères", "Odonates", "Orthoptères", "Phasmatoptères", "Phthiraptères", "Plécoptères", "Psocoptères", "Raphidioptères", "Siphonaptères", "Strepsiptères", "Thysanoptères", "Thysanoures", "Trichoptères", "Zoraptères"]
  has_many :bookings
  belongs_to :user

  has_one_attached :photo
end
