class BuscarRecetaController < ApplicationController
  def index
    @ingredientes = Ingrediente.all
    @implementos = Implemento.all
  end	

  def show

  end

end
