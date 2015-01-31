class CabssesController < ApplicationController
  before_action :set_cabss, only: [:show, :edit, :update, :destroy]

  # GET /cabsses
  # GET /cabsses.json
  def index
    @cabsses = Cabss.all
  end

  # GET /cabsses/1
  # GET /cabsses/1.json
  def show
  end

  # GET /cabsses/new
  def new
    @cabss = Cabss.new
  end

  # GET /cabsses/1/edit
  def edit
  end

  # POST /cabsses
  # POST /cabsses.json
  def create
    @cabss = Cabss.new(cabss_params)

    respond_to do |format|
      if @cabss.save
        format.html { redirect_to @cabss, notice: 'Cabss was successfully created.' }
        format.json { render :show, status: :created, location: @cabss }
      else
        format.html { render :new }
        format.json { render json: @cabss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabsses/1
  # PATCH/PUT /cabsses/1.json
  def update
    respond_to do |format|
      if @cabss.update(cabss_params)
        format.html { redirect_to @cabss, notice: 'Cabss was successfully updated.' }
        format.json { render :show, status: :ok, location: @cabss }
      else
        format.html { render :edit }
        format.json { render json: @cabss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabsses/1
  # DELETE /cabsses/1.json
  def destroy
    @cabss.destroy
    respond_to do |format|
      format.html { redirect_to cabsses_url, notice: 'Cabss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabss
      @cabss = Cabss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabss_params
      params.require(:cabss).permit(:cab_type, :cab_no, :rate, :insure)
    end
end
