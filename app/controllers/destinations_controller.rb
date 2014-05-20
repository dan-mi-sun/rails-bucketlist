class DestinationsController < ApplicationController

  def create
    @destination = Destination.new(allowed_params) 
    @destination.save!
    redirect_to destination_path(@destination)
  end

  private
  def allowed_params
    params.require(:destination).permit(:name)
  end

end
