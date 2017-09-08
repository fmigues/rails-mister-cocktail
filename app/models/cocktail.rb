class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader
end

# cocktail.doses

# Dose.where(cocktail_id: cocktail.id) = array of all the doses that have the current cocktails id
