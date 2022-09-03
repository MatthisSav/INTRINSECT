class Insect < ApplicationRecord
  TYPES = ["Aptérygotes", "Blattoptères", "Coléoptères", "Dermaptères", "Diptères", "Embioptères", "Éphéméroptères", "Grylloblattoptères", "Hémiptères", "Hyménoptères", "Blattoptères", "Lépidoptères", "Mantophasmatoptères", "Mantoptères", "Mécoptères", "Mégaloptères", "Neuroptères", "Odonates", "Orthoptères", "Phasmatoptères", "Phthiraptères", "Plécoptères", "Psocoptères", "Raphidioptères", "Siphonaptères", "Strepsiptères", "Thysanoptères", "Thysanoures", "Trichoptères", "Zoraptères"]
  has_many :bookings, dependent: :destroy
  belongs_to :user

  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
