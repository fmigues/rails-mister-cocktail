require 'open-uri'
require 'json'

Cocktail.destroy_all
Ingredient.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)
user.each do |key, index|
   index.each { |value| Ingredient.create(name: value["strIngredient1"] ) }
end


# cocktails = [{name: "Gin Tonic"}, {name: "Whiskey Sour"}]

# cocktails.each { |cocktail| Cocktail.create(cocktail) }
