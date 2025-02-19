class StateinformationsController < ApplicationController
  before_action :set_stateinformation, only: %i[ show edit update destroy ]

  # GET /stateinformations or /stateinformations.json
  def index
    @stateinformations = Stateinformation.all
  end

  # GET /stateinformations/1 or /stateinformations/1.json
  def show
  end

  # GET /stateinformations/new
  def new
    @stateinformation = Stateinformation.new
  end

  # GET /stateinformations/1/edit
  def edit
  end

  # POST /stateinformations or /stateinformations.json
  def create
    @stateinformation = Stateinformation.new(stateinformation_params)

    respond_to do |format|
      if @stateinformation.save
        format.html { redirect_to stateinformation_url(@stateinformation), notice: "Stateinformation was successfully created." }
        format.json { render :show, status: :created, location: @stateinformation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stateinformation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stateinformations/1 or /stateinformations/1.json
  def update
    respond_to do |format|
      if @stateinformation.update(stateinformation_params)
        format.html { redirect_to stateinformation_url(@stateinformation), notice: "Stateinformation was successfully updated." }
        format.json { render :show, status: :ok, location: @stateinformation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stateinformation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stateinformations/1 or /stateinformations/1.json
  def destroy
    @stateinformation.destroy

    respond_to do |format|
      format.html { redirect_to stateinformations_url, notice: "Stateinformation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stateinformation
      @stateinformation = Stateinformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stateinformation_params
      params.require(:stateinformation).permit(:state, :asesinatos, :robos, :violaciones, :maltrato_infantil)
    end
end
