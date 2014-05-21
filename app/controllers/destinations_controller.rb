class DestinationsController < ApplicationController

  before_filter :load_all_destinations, :only => :index

  before_filter :load_one_destination, :only => :show

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
    params.require(:destination).permit(:name, :image_url)
  end

  def load_all_destinations
    @destinations = Destination.all
  end

  def load_one_destination
    @destination = Destination.find(params[:id])
  end

end
