class DriversController < ApplicationController
  before_action :set_driver, only: [:show, :edit, :update, :destroy]

  # GET /driveres
  # GET /driveres.json
  def index
    @drivers = Driver.all
  end

  # GET /driveres/1
  # GET /driveres/1.json
  def show
  end

  # GET /driveres/new
  def new
    @driver = Driver.new
  end

  # GET /driveres/1/edit
  def edit
  end

  # POST /driveres
  # POST /driveres.json
  def create
    @driver = Driver.new(driver_params)

    respond_to do |format|
      if @driver.save
        format.html { redirect_to @driver, notice: 'driver was successfully created.' }
        format.json { render :show, status: :created, location: @driver }
      else
        format.html { render :new }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driveres/1
  # PATCH/PUT /driveres/1.json
  def update
    respond_to do |format|
      if @driver.update(driver_params)
        format.html { redirect_to @driver, notice: 'driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver }
      else
        format.html { render :edit }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driveres/1
  # DELETE /driveres/1.json
  def destroy
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to driveres_url, notice: 'driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_params
      params.require(:driver).permit(:driver_name, :license_no, :experience_in_years)
    end
end
