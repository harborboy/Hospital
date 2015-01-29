class HospitalsController < ApplicationController
  before_action :set_hospital, only: [:show, :edit, :update, :destroy]

  def index
    @hospitals = Hospital.all
  end

  def show
    @patients = @hospital.patients
  end

  def new
    @hospital = Hospital.new

  end

  def create
    @hospital = Hospital.new(hospital_params)
    if @hospital.save
      flash[:notice]= 'Hospital was successfully created'
    redirect_to hospitals_path
  else
    flash[:error] = 'Hospital was not saved.'
    render :new
  end
end

  def edit
    
  end

  def update
    respond_to do |format|
      if @hosptial.update(hospital_params)
        format.html { redirect_to @hospital, notice: 'Hospital was successfully updated.' }
        format.json { render :show, status: :ok, location: @hospital }
      else
        format. html {render :edit}
        formate.json {render json: @hospital.errors, status: :unprocessable_entity }
      end
    end
  end
  

  def destroy
    @hospital.destroy
    respond_to do |format|
      format.html { redirect_to hospital_url, notice: 'Hospital was successfully destroyed.
        '}
        format.json { head :no_content }
      end 
    end
    

  private 

  def set_hospital
    @hospital = Hospital.find(params[:id])

  end


def hospital_params
  params.require(:hospital).permit(
    :name
    )
end
end
