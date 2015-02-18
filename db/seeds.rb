# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  r = Recipe.new
  r.name_recipe         = "Angu"
  r.cuisine             = "Brasileira"
  r.type_food           = "Principal"
  r.preferences         = "Calórica"
  r.served_people       = 5
  r.time_preparation    = "00:30:00"
  r.dificulty           = "Fácil"
  r.ingredients         = "Fubá, Água e Sal"
  r.directions          = "Coloque água em uma panela até obter ponto de fervura, acrescentar os ingredientes aos poucos"
  r.image_file_name     = "teste-vocacional.jpg"
  r.image_content_type  = "image/jpeg"
  r.image_file_size     = 22596
  r.image_updated_at    = Time.now
  r.save
end