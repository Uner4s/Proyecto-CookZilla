class Implemento < ActiveRecord::Base
    has_many :has_implementos
    has_many :recipes, through: :HasImplemento
end
