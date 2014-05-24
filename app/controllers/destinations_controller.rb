class DestinationsController < ApplicationController

  before_filter :load_all_destinations, :only => :index

  before_filter :load_one_destination, :only => :show

  def index
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(allowed_params)
    if @destination.save
      respond_to do |format|
        format.html { redirect_to destination_path(@destination), :notice => "Record Saved"}
        format.js 
      end

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
