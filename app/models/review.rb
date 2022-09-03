class Review < ApplicationRecord
  belongs_to :insect
  validates :content, length: { minimum: 20 }
end
