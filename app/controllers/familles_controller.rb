class FamillesController < ApplicationController
  before_action :set_famille, only: %i[ show edit update destroy ]

  # GET /familles or /familles.json
  def index
    @familles = Famille.includes(:plantes).all
  end

  # GET /familles/1 or /familles/1.json
  def show
    @famille = Famille.find(params[:id])
  end

  # GET /familles/new
  def new
    @famille = Famille.new
    @famille.type_id = params[:type_id] if params[:type_id]
  end

  # GET /familles/1/edit
  def edit
  end

  # POST /familles or /familles.json
  def create
    @famille = Famille.new(famille_params)
  
    respond_to do |format|
      if @famille.save
        format.html { redirect_to @famille, notice: 'Famille was successfully created.' }
        format.json { render :show, status: :created, location: @famille }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @famille.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /familles/1 or /familles/1.json
  def update
    respond_to do |format|
      if @famille.update(famille_params)
        format.html { redirect_to famille_url(@famille), notice: "Famille was successfully updated." }
        format.json { render :show, status: :ok, location: @famille }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @famille.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familles/1 or /familles/1.json
  # app/controllers/familles_controller.rb
  def destroy
    @famille = Famille.find(params[:id])
    if @famille.plantes.empty?
      @famille.destroy
      redirect_to familles_path, notice: 'Famille détruite avec succès.'
    else
      redirect_to @famille, alert: 'Cette famille ne peut pas être détruite car elle a des plantes rattachées.'
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_famille
      @famille = Famille.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def famille_params
      params.require(:famille).permit(:nom, :type_id, :origine, :temperature, :arrosage, :substrat, :rempotage, :taille, :bouturage, :maladie)
    end
end
