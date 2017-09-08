class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end

# dose = dose.find(params[:id])
# dose.cocktail = return the cocktail object it belongs belongs to
# cocktail = Cocktail.where(id: dose.cocktail_id)

# dose.cocktail

