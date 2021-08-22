class LogsController < ApplicationController
  before_action :get_patient
  before_action :set_log, only: %i[ show edit update destroy ]

  # GET /logs or /logs.json
  def index
    @logs = @patient.logs
  end

  # GET /logs/1 or /logs/1.json
  def show
    @doses = @log.doses
  end

  # GET /logs/new
  def new
    @log = @patient.logs.build
  end

  # GET /logs/1/edit
  def edit
  end

  # POST /logs or /logs.json
  def create
    @log = @patient.logs.build(log_params)

    respond_to do |format|
      if @log.save
        format.html { redirect_to patient_log_path(@patient, @log), notice: "Add in the dosages given!" }
        format.json { render :show, status: :created, location: @log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logs/1 or /logs/1.json
  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to patient_logs_path(@patient), notice: "Log was successfully updated." }
        format.json { render :show, status: :ok, location: @log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logs/1 or /logs/1.json
  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to patient_logs_path(@patient), notice: "Log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def get_patient
      @patient = Patient.find(params[:patient_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_log
      @log = @patient.logs.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def log_params
      params.require(:log).permit(:time_admr, dose_attributes:[:amount,:medicine_id])
    end
end
