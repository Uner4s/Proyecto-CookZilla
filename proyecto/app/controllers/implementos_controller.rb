class ImplementosController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
  before_action :set_implemento, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new,:create,:update]

  # GET /implementos
  # GET /implementos.json
  def index
    @implementos = Implemento.all
  end

  # GET /implementos/1
  # GET /implementos/1.json
  def show
  end

  # GET /implementos/new
  def new
    @implemento = Implemento.new
  end

  # GET /implementos/1/edit
  def edit
  end

  # POST /implementos
  # POST /implementos.json
  def create
    @implemento = Implemento.new(implemento_params)

    respond_to do |format|
      if @implemento.save
        format.html { redirect_to @implemento, notice: 'Se ha añadido el implemento a la base de datos.' }
        format.json { render :show, status: :created, location: @implemento }
      else
        format.html { render :new }
        format.json { render json: @implemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /implementos/1
  # PATCH/PUT /implementos/1.json
  def update
    respond_to do |format|
      if @implemento.update(implemento_params)
        format.html { redirect_to @implemento, notice: 'Se ha modificado el implemento.' }
        format.json { render :show, status: :ok, location: @implemento }
      else
        format.html { render :edit }
        format.json { render json: @implemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implementos/1
  # DELETE /implementos/1.json
  def destroy
    @implemento.destroy
    respond_to do |format|
      format.html { redirect_to implementos_url, notice: 'El implemento ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_implemento
      @implemento = Implemento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def implemento_params
      params.require(:implemento).permit(:imp_nombre)
    end
end
