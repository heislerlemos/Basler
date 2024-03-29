class MapasController < ApplicationController
  before_action :set_mapa, only: [:show, :edit, :update, :destroy]

  # GET /mapas
  # GET /mapas.json
  def index
    @mapas = Mapa.all
@hash = Gmaps4rails.build_markers(@mapas) do |mapa, marker|
  marker.lat mapa.latitude
  marker.lng mapa.longitude
end
  end

  # GET /mapas/1
  # GET /mapas/1.json
  def show
  end

  # GET /mapas/new
  def new
    @mapa = Mapa.new
  end

  # GET /mapas/1/edit
  def edit
  end

  # POST /mapas
  # POST /mapas.json
  def create
    @mapa = Mapa.new(mapa_params)

    respond_to do |format|
      if @mapa.save
        format.html { redirect_to @mapa, notice: 'Mapa was successfully created.' }
        format.json { render :show, status: :created, location: @mapa }
      else
        format.html { render :new }
        format.json { render json: @mapa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mapas/1
  # PATCH/PUT /mapas/1.json
  def update
    respond_to do |format|
      if @mapa.update(mapa_params)
        format.html { redirect_to @mapa, notice: 'Mapa was successfully updated.' }
        format.json { render :show, status: :ok, location: @mapa }
      else
        format.html { render :edit }
        format.json { render json: @mapa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapas/1
  # DELETE /mapas/1.json
  def destroy
    @mapa.destroy
    respond_to do |format|
      format.html { redirect_to mapas_url, notice: 'Mapa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapa
      @mapa = Mapa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mapa_params
      params.require(:mapa).permit(:latitude, :longitude, :address, :description, :title)
    end
end
