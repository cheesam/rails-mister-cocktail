class DosesController < ApplicationController

  def create
    @dose = Dose.create(dose_params)
    redirect_to cocktails_path
  end

  def new
    @dose = Dose.new
  end

  private

  def dose_params
    params.require(:dose).permit(:name)
  end
end
