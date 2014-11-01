class PrescriptionsController < ApplicationController
  def new
    @prescription = Prescription.new
  end

  def create 
    @prescription = Prescription.new prescription_params.merge({user: current_user})
    if @prescription.save
      redirect_to root_path
    else
      render :back
    end
  end

  private

  def prescription_params
    params.fetch(:prescription).permit!
  end
end
