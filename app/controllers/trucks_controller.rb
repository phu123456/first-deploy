class TrucksController < ApplicationController
  before_action :set_truck, only: [:show, :edit, :update, :destroy, :reEngine, :reTransmission, :reGear, :reAir, :reCoolant, :reBlower]

  def reEngine
    @un_reset_engine_oil_trips = @truck.trips.where(engine_id: nil)
    @engine = Engine.create!()
    @un_reset_engine_oil_trips.update_all(engine_id: @engine.id)
    redirect_to @truck
  end

  def reTransmission
    @un_reset_transmission_oil_trips = @truck.trips.where(transmission_id: nil)
    @transmission = Transmission.create!()
    @un_reset_transmission_oil_trips.update_all(transmission_id: @transmission.id)
    redirect_to @truck
  end

  def reGear
    @un_reset_gear_oil_trips = @truck.trips.where(gear_id: nil)
    @gear = Gear.create!()
    @un_reset_gear_oil_trips.update_all(gear_id: @gear.id)
    redirect_to @truck
  end

  def reAir
    @un_reset_air_filter_trips = @truck.trips.where(air_id: nil)
    @air = Air.create!()
    @un_reset_air_filter_trips.update_all(air_id: @air.id)
    redirect_to @truck
  end

  def reCoolant
    @un_reset_coolant_trips = @truck.trips.where(coolant_id: nil)
    @coolant = Coolant.create!()
    @un_reset_coolant_trips.update_all(coolant_id: @coolant.id)
    redirect_to @truck
  end

  def reBlower
    @un_reset_blower_trips = @truck.trips.where(blower_id: nil)
    @blower = Blower.create!()
    @un_reset_blower_trips.update_all(blower_id: @blower.id)
    redirect_to @truck
  end
  # GET /trucks
  # GET /trucks.json
  def index
    @truck = Truck.first
    @maintenance_red = Maintenance.first
    @maintenance_orange = Maintenance.second
    @trucks = Truck.search(params[:search])
    @trips = Trip.all
    authorize! :index, @truck

  end

  # GET /trucks/1
  # GET /trucks/1.json
  def show
    @maintenance_red = Maintenance.first
    @maintenance_orange = Maintenance.second
    @trips = Trip.where(truck_id: @truck.id)
  end

  # GET /trucks/new
  def new
    @truck = Truck.new
  end

  # GET /trucks/1/edit
  def edit
  end

  # POST /trucks
  # POST /trucks.json
  def create
    @truck = Truck.new(truck_params)

    respond_to do |format|
      if @truck.save
        format.html { redirect_to @truck, notice: 'Truck was successfully created.' }
        format.json { render :show, status: :created, location: @truck }
      else
        format.html { render :new }
        format.json { render json: @truck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trucks/1
  # PATCH/PUT /trucks/1.json
  def update
    respond_to do |format|
      if @truck.update(truck_params)
        format.html { redirect_to @truck, notice: 'Truck was successfully updated.' }
        format.json { render :show, status: :ok, location: @truck }
      else
        format.html { render :edit }
        format.json { render json: @truck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trucks/1
  # DELETE /trucks/1.json
  def destroy
    @truck.destroy
    respond_to do |format|
      format.html { redirect_to trucks_url, notice: 'Truck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck
      @truck = Truck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_params
      params.require(:truck).permit(:plate, :bulker)
    end

end
