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
  # app/controllers/plantes_controller.rb
  def new
    @plante = Plante.new
    @familles = Famille.all # Récupère toutes les familles pour les afficher dans le formulaire
    @plante.famille_id = params[:famille_id] if params[:famille_id]
    # Assurez-vous d'ajouter une logique pour gérer le cas où `famille_id` n'est pas fourni

  end

  # GET /plantes/1/edit
  def edit
    @plante = Plante.find(params[:id])
    @familles = Famille.all
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
      params.require(:plante).permit(:nom, :image_url, :famille_id, :observation, :conseil_expert)
    end
end
