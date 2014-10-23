class PrescriptionsController < ApplicationController
  def new
    @prescription = current_user.prescriptions.new
  end

  def create 
    @prescription = current_user.prescriptions.new prescription_params
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
