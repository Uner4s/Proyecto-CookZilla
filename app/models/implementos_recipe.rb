class ImplementosRecipe < ActiveRecord::Base
  belongs_to :implemento
  belongs_to :recipe
end
