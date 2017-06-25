class HighsController < ApplicationController
  before_action :set_high, only: [:show, :edit, :update, :destroy]

  # GET /highs
  # GET /highs.json
  def index
    @highs = High.all
  end

  # GET /highs/1
  # GET /highs/1.json
  def show
  end

  # GET /highs/new
  def new
    @high = High.new
  end

  # GET /highs/1/edit
  def edit
  end

  # POST /highs
  # POST /highs.json
  def create
    @high = High.new(high_params)

    respond_to do |format|
      if @high.save
        format.html { redirect_to @high, notice: 'High was successfully created.' }
        format.json { render :show, status: :created, location: @high }
      else
        format.html { render :new }
        format.json { render json: @high.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /highs/1
  # PATCH/PUT /highs/1.json
  def update
    respond_to do |format|
      if @high.update(high_params)
        format.html { redirect_to @high, notice: 'High was successfully updated.' }
        format.json { render :show, status: :ok, location: @high }
      else
        format.html { render :edit }
        format.json { render json: @high.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /highs/1
  # DELETE /highs/1.json
  def destroy
    @high.destroy
    respond_to do |format|
      format.html { redirect_to highs_url, notice: 'High was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high
      @high = High.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def high_params
      params.require(:high).permit(:score)
    end
end
