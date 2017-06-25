class IngredientesRecipe < ActiveRecord::Base
  belongs_to :ingrediente
  belongs_to :recipe
end
