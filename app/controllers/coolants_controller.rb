class CoolantsController < ApplicationController
  before_action :set_coolant, only: [:show, :edit, :update, :destroy]

  # GET /coolants
  # GET /coolants.json
  def index
    @coolants = Coolant.all
  end

  # GET /coolants/1
  # GET /coolants/1.json
  def show
  end

  # GET /coolants/new
  def new
    @coolant = Coolant.new
  end

  # GET /coolants/1/edit
  def edit
  end

  # POST /coolants
  # POST /coolants.json
  def create
    @coolant = Coolant.new(coolant_params)

    respond_to do |format|
      if @coolant.save
        format.html { redirect_to @coolant, notice: 'Coolant was successfully created.' }
        format.json { render :show, status: :created, location: @coolant }
      else
        format.html { render :new }
        format.json { render json: @coolant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coolants/1
  # PATCH/PUT /coolants/1.json
  def update
    respond_to do |format|
      if @coolant.update(coolant_params)
        format.html { redirect_to @coolant, notice: 'Coolant was successfully updated.' }
        format.json { render :show, status: :ok, location: @coolant }
      else
        format.html { render :edit }
        format.json { render json: @coolant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coolants/1
  # DELETE /coolants/1.json
  def destroy
    @coolant.destroy
    respond_to do |format|
      format.html { redirect_to coolants_url, notice: 'Coolant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coolant
      @coolant = Coolant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coolant_params
      params.fetch(:coolant, {})
    end
end
