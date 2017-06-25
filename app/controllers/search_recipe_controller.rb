class SearchRecipeController < ApplicationController
  def index
    @resultado=Recipe.joins(:has_ingrediente).where(has_ingrediente: {ing_id: params[:ingredientes]})
    raise @resultado.to_yaml
  end

  def search_form
      @ingredientes = Ingrediente.all
      @implementos = Implemento.all
    
  end
end
