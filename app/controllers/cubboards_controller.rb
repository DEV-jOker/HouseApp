class CubboardsController < ApplicationController
  before_action :set_cubboard, only: %i[ show edit update destroy ]

  # GET /cubboards or /cubboards.json
  def index
    @cubboards = Cubboard.all
  end

  # GET /cubboards/1 or /cubboards/1.json
  def show
  end

  # GET /cubboards/new
  def new
    @cubboard = Cubboard.new
  end

  # GET /cubboards/1/edit
  def edit
  end

  # POST /cubboards or /cubboards.json
  def create
    @cubboard = Cubboard.new(cubboard_params)

    respond_to do |format|
      if @cubboard.save
        format.html { redirect_to @cubboard, notice: "Cubboard was successfully created." }
        format.json { render :show, status: :created, location: @cubboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cubboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cubboards/1 or /cubboards/1.json
  def update
    respond_to do |format|
      if @cubboard.update(cubboard_params)
        format.html { redirect_to @cubboard, notice: "Cubboard was successfully updated." }
        format.json { render :show, status: :ok, location: @cubboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cubboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cubboards/1 or /cubboards/1.json
  def destroy
    @cubboard.destroy
    respond_to do |format|
      format.html { redirect_to cubboards_url, notice: "Cubboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cubboard
      @cubboard = Cubboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cubboard_params
      params.require(:cubboard).permit(:name, :description, :room_id)
    end
end
