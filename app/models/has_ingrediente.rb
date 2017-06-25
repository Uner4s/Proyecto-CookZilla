class HasIngrediente < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingrediente
end