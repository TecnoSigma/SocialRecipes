class Recipe < ActiveRecord::Base
  validates_presence_of :name_recipe, :cuisine, :type_food, :preferences, :ingredients, :directions
  validates :served_people, numericality: { only_integer: true }
  validates :dificulty, inclusion: { in: %w(Fácil Médio Difícil)}

  #tratamento de imagens
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "120x90#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end