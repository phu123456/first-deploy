class BlowersController < ApplicationController
  before_action :set_blower, only: [:show, :edit, :update, :destroy]

  # GET /blowers
  # GET /blowers.json
  def index
    @blowers = Blower.all
  end

  # GET /blowers/1
  # GET /blowers/1.json
  def show
  end

  # GET /blowers/new
  def new
    @blower = Blower.new
  end

  # GET /blowers/1/edit
  def edit
  end

  # POST /blowers
  # POST /blowers.json
  def create
    @blower = Blower.new(blower_params)

    respond_to do |format|
      if @blower.save
        format.html { redirect_to @blower, notice: 'Blower was successfully created.' }
        format.json { render :show, status: :created, location: @blower }
      else
        format.html { render :new }
        format.json { render json: @blower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blowers/1
  # PATCH/PUT /blowers/1.json
  def update
    respond_to do |format|
      if @blower.update(blower_params)
        format.html { redirect_to @blower, notice: 'Blower was successfully updated.' }
        format.json { render :show, status: :ok, location: @blower }
      else
        format.html { render :edit }
        format.json { render json: @blower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blowers/1
  # DELETE /blowers/1.json
  def destroy
    @blower.destroy
    respond_to do |format|
      format.html { redirect_to blowers_url, notice: 'Blower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blower
      @blower = Blower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blower_params
      params.fetch(:blower, {})
    end
end
