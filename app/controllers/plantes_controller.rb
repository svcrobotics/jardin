class PlantesController < ApplicationController
  before_action :set_plante, only: %i[ show edit update destroy ]

  # GET /plantes or /plantes.json
  def index
    @plantes = Plante.all
  end

  # GET /plantes/1 or /plantes/1.json
  def show
    
  end


  # GET /plantes/new
  def new
    @plante = Plante.new
  end

  # GET /plantes/1/edit
  def edit
  end

  # POST /plantes or /plantes.json
  def create
    @plante = Plante.new(plante_params)

    respond_to do |format|
      if @plante.save
        format.html { redirect_to plante_url(@plante), notice: "Plante was successfully created." }
        format.json { render :show, status: :created, location: @plante }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantes/1 or /plantes/1.json
  def update
    respond_to do |format|
      if @plante.update(plante_params)
        format.html { redirect_to plante_url(@plante), notice: "Plante was successfully updated." }
        format.json { render :show, status: :ok, location: @plante }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantes/1 or /plantes/1.json
  def destroy
    @plante.destroy!

    respond_to do |format|
      format.html { redirect_to plantes_url, notice: "Plante was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plante
      @plante = Plante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plante_params
      params.require(:plante).permit(:nom, :image_url, :arrosage_hiver, :arrosage_printemps_ete, :origine, :rempotage, :plantation, :maladie, :categorie, :temperature, :substrat, :taille, :bouturage)
    end
end
