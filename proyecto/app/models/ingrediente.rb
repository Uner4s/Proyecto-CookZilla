class Ingrediente < ActiveRecord::Base
    has_many :has_ingredientes
    has_many :recipes, through: :HasIngrediente

end
