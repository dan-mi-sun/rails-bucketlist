class DestinationsController < ApplicationController

  def create
    @destination = Destination.new(allowed_params)
    if @destination.save
      redirect_to destination_path(@destination), :notice => "Record Saved"
    else
      render :new
    end
  end

  private
  def allowed_params
    params.require(:destination).permit(:name)
  end

end
