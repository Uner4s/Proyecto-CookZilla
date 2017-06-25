class Recipe < ActiveRecord::Base
    include AASM
    after_create :save_implementos
    after_create :save_ingredientes
    has_many :HasImplemento, dependent: :destroy
    has_many :HasIngrediente, dependent: :destroy
    has_many :ingredientes, through: :HasIngrediente
    has_many :implementos, through: :HasImplemento
    accepts_nested_attributes_for :ingredientes   

    belongs_to :user

    scope :aceptadas, ->{where(state: "published")}
    
        #CUSTOM SETTER#
	def ingredientes=(value)
            @ingredientes = value
	end
	def implementos=(value)
            @implementos = value
            #raise @implementos.to_yaml
	end
        
        
    aasm column: "state" do
        state :in_draft, initial: true
        state :published

        event :publish do
            transitions from: :in_draft, to: :published
        end

        event :unpublish do
            transitions from: :published, to: :in_draft
        end
    end
    private
        
    #Guarda los implemenos de una receta
    def save_implementos
        #raise self.id.to_yaml
        @implementos.each do |implemento_id|
            HasImplemento.create(implemento_id: implemento_id, recipe_id: self.id) 
        end
    end
        
    def save_ingredientes
        #raise @ingredientes.to_yaml
        @ingredientes.each do |ingrediente_id|
            HasIngrediente.create(ingrediente_id: ingrediente_id, recipe_id: self.id)
        end
                
    end
    
    def buscar_receta
        
    end


end