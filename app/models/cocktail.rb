class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end

# cocktail.doses
# Dose.where(cocktail_id: cocktail.id) = array of all the doses that have the current cocktails id
