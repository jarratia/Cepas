class ConectionStrainsController < ApplicationController
  before_action :set_conection_strain, only: [:show, :edit, :update, :destroy]

  # GET /conection_strains
  # GET /conection_strains.json
  def index
    @conection_strains = ConectionStrain.all
  end

  # GET /conection_strains/1
  # GET /conection_strains/1.json
  def show
  end

  # GET /conection_strains/new
  def new
    @conection_strain = ConectionStrain.new
  end

  # GET /conection_strains/1/edit
  def edit
  end

  # POST /conection_strains
  # POST /conection_strains.json
  def create
    @conection_strain = ConectionStrain.new(conection_strain_params)

    respond_to do |format|
      if @conection_strain.save
        format.html { redirect_to @conection_strain, notice: 'Conection strain was successfully created.' }
        format.json { render :show, status: :created, location: @conection_strain }
      else
        format.html { render :new }
        format.json { render json: @conection_strain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conection_strains/1
  # PATCH/PUT /conection_strains/1.json
  def update
    respond_to do |format|
      if @conection_strain.update(conection_strain_params)
        format.html { redirect_to @conection_strain, notice: 'Conection strain was successfully updated.' }
        format.json { render :show, status: :ok, location: @conection_strain }
      else
        format.html { render :edit }
        format.json { render json: @conection_strain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conection_strains/1
  # DELETE /conection_strains/1.json
  def destroy
    @conection_strain.destroy
    respond_to do |format|
      format.html { redirect_to conection_strains_url, notice: 'Conection strain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conection_strain
      @conection_strain = ConectionStrain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conection_strain_params
      params.require(:conection_strain).permit(:wine_id, :strain_id)
    end
end
