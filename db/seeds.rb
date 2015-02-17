# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  r = Recipe.create
  r.name_recipe = "Angu"
  r.cuisine = "Brasileira"
  r.type_food = "Principal"
  r.preferences = "Calórica"
  r.served_people = 5
  r.time_preparation = "00:30"
  r.dificulty = "Fácil"
  r.ingredients = "Fubá, Água e Sal"
  r.directions = "Coloque água em uma panela até obter ponto de fervura, adicione pitadas de sal na água. Deixe dissolver. Acrescente o fubá aos poucos sempre mexendo para não empelotar. Mexa com uma colher de pau até conseguir uma massa homogênea."

  c = Cuisine.create
  c.cuisine = "Brasileira"