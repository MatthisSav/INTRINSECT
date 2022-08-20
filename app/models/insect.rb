class Insect < ApplicationRecord
  TYPES = ["1", "2"]
  
  belongs_to :user
end
