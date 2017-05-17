class FranjasController < ApplicationController
  before_action :set_franja, only: [:show, :edit, :update, :destroy]

  # GET /franjas
  # GET /franjas.json
  def index
    @franjas = Franja.all
  end

  # GET /franjas/1
  # GET /franjas/1.json
  def show
  end

  # GET /franjas/new
  def new
    @franja = Franja.new
  end

  # GET /franjas/1/edit
  def edit
  end

  # POST /franjas
  # POST /franjas.json
  def create
    @franja = Franja.new(franja_params)
    @franja.fecha = Time.now

    respond_to do |format|
      if @franja.save
        format.html { redirect_to @franja, notice: 'La Franja se creo correctamente.' }
        format.json { render :show, status: :created, location: @franja }
      else
        format.html { render :new }
        format.json { render json: @franja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /franjas/1
  # PATCH/PUT /franjas/1.json
  def update
    respond_to do |format|
      if @franja.update(franja_params)
        format.html { redirect_to @franja, notice: 'La Franja se modifico correctamente.' }
        format.json { render :show, status: :ok, location: @franja }
      else
        format.html { render :edit }
        format.json { render json: @franja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /franjas/1
  # DELETE /franjas/1.json
  def destroy
    @franja.destroy
    respond_to do |format|
      format.html { redirect_to franjas_url, notice: 'La Franja se elimino correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_franja
      @franja = Franja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def franja_params
      params.require(:franja).permit(:fecha, :primera_hasta, :primera_precio, :segunda_hasta, :segunda_precio, :tercera_precio)
    end
end
