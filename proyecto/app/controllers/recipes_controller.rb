class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :authenticate_normal_user!, only: [:create]
  before_action :authenticate_moderador!, only: [:edit, :update]
  before_action :authenticate_admin!, only: [:destroy]
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show

  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    @ingredientes = Ingrediente.all
    @implementos = Implemento.all
  end

  # GET /recipes/1/edit
  def edit
    @ingredientes = Ingrediente.all
    @implementos = Implemento.all
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    #Asignas los valores de implementos seleccionados a la variable implementos
    @recipe.implementos = params[:Implementos]
    #Asignas los valores de ingredientes seleccionados a la variable ingredientes
    @recipe.ingredientes = params[:Ingredientes]
    #raise params.yaml
    respond_to do |format|
      if user_signed_in? && current_user.is_normal_user? 
          if @recipe.save
            format.html { redirect_to @recipe, notice: 'La receta fue creada con exito.' }
            format.json { render :show, status: :created, location: @recipe }
          else
            format.html { render :new }
            format.json { render json: @recipe.errors, status: :unprocessable_entity }
          end 
      else
        format.html { redirect_to @recipe, notice: 'No puedes crear Recetas' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    if user_signed_in? && current_user.is_moderador? 
      respond_to do |format|
        if @recipe.update(recipe_params)
          format.html { redirect_to @recipe, notice: 'Se ha modificado la receta con exito.' }
          format.json { render :show, status: :ok, location: @recipe }
        else
          format.html { render :edit }
          format.json { render json: @recipe.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to recipes_url, notice: 'No tiene permisos para modificar recetas.' }
        format.json { head :no_content }
      end
    end
  end
  def validate_user
    redirect_to new_user_session_path, notice:"Se necesita iniciar sesion"
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    if user_signed_in? && current_user.is_admin? 
      @recipe.destroy
      respond_to do |format|
        format.html { redirect_to recipes_url, notice: 'Se ha eliminado la receta de forma exitosa.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to recipes_url, notice: 'No se tienen los permisos para eliminar recetas.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:titulo, :dificultad, :tiempo, :Ingredientes, :Implementos, :glosa)
    end
end
