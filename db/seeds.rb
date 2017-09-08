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


cocktails = [
  {
    name: "Molotov",
    picture: "https://static.pexels.com/photos/162915/drink-fruit-water-detox-detox-water-162915.jpeg"
    },
  {
    name: "Avalanche",
    picture: "https://static.pexels.com/photos/161456/smoothie-fruit-vegetables-salad-beetroot-carrots-161456.jpeg"
    },
  {
    name: "Terremoto",
    picture: "https://static.pexels.com/photos/338713/pexels-photo-338713.jpeg"
    },
]


cocktails.each { |cocktail| Cocktail.create(cocktail) }
