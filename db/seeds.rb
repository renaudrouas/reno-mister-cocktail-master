require 'faker'
require 'open-uri'


Ingredient.destroy_all
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_list = JSON.parse(open(url).read)["drinks"]

ingredients_list.each do |ingredient_hash|
  Ingredient.create!(
      name: ingredient_hash["strIngredient1"]
    )
end

