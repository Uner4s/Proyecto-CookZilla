class HasImplemento < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :implemento
end