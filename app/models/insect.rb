class Insect < ApplicationRecord
  TYPES = ["Aptérygotes", "Blattoptères", "Coléoptères", "Dermaptères", "Diptères", "Embioptères", "Éphéméroptères", "Grylloblattoptères", "Hémiptères", "Hyménoptères", "Blattoptères", "Lépidoptères", "Mantophasmatoptères", "Mantoptères", "Mécoptères", "Mégaloptères", "Neuroptères", "Odonates", "Orthoptères", "Phasmatoptères", "Phthiraptères", "Plécoptères", "Psocoptères", "Raphidioptères", "Siphonaptères", "Strepsiptères", "Thysanoptères", "Thysanoures", "Trichoptères", "Zoraptères"]
  has_many :bookings, dependent: :destroy
  belongs_to :user

  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
