class DosesController < ApplicationController
  before_action :get_log_and_patient, only: %i[ index new create ]
  before_action :get_patient, only: %i[ edit ]
  before_action :set_dose, only: %i[ show edit update destroy ]

  # GET /doses or /doses.json
  def index
    @doses = @log.doses
  end

  # GET /doses/1 or /doses/1.json
  def show
  end

  # GET /doses/new
  def new
    @dose = @log.doses.build
  end

  # GET /doses/1/edit
  def edit
  end

  # POST /doses or /doses.json
  def create
    @dose = @log.doses.build(dose_params)

    respond_to do |format|
      if @dose.save
        format.html { redirect_to patient_log_path(@patient, @log), notice: "dose was successfully created." }
        format.json { render :show, status: :created, location: @dose }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doses/1 or /doses/1.json
  def update
    respond_to do |format|
      if @dose.update(dose_params)
        log = @dose.log
        patient = log.patient
        format.html { redirect_to patient_log_path(patient, log), notice: "dose was successfully updated." }
        format.json { render :show, status: :ok, location: @dose }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doses/1 or /doses/1.json
  def destroy
    log = @dose.log
    patient = log.patient
    @dose.destroy
    respond_to do |format|
      format.html { redirect_to patient_log_path(patient, log), notice: "dose was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def get_log_and_patient
      @log = Log.find(params[:log_id])
      @patient = Patient.find(params[:patient_id])
    end

    def get_patient
      @log = Dose.find(params[:id]).log
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_dose
      # @dose = @log.doses.find(params[:id])
      @dose = Dose.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dose_params
      params.require(:dose).permit(:amount,:medicine_id)
    end
end
