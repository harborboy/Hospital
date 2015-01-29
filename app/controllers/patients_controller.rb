class PatientsController < ApplicationController
  
 def index
  @patients = Patient.all

  def new
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.new

  end

  def create
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.create patient_params
    redirect_to hospital_path(@hospital)
  end

  def edit
    @patient = Patient.find params[:id]
  end

  def update
    @patient = Patient.find params[:id]
    @patient.update_attributes patient_params
    redirect_to root_path
  end

  def destroy
    @patient = Patient.find params[:id]
    @patient.delete
    redirect_to patient_path
  end

  private 
  def patient_params
    params.require(:patient).permit(
      :first,
      :last,
      :birth,
      :description,
      :gender,
      :blood
      )
  end
end

  end


