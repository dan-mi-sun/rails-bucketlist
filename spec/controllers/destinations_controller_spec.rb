require 'spec_helper'

describe DestinationsController, :type => :controller do

  describe "POST to create" do
    context "with valid data" do
    before do
      #Setup goes here
      @country = Faker::Address.country
      params = {
        :destination => {
            :name => @country
        } 
      }

      post :create, params
    end
    #Tests go here
    it "should create a Destination" do
      expect(Destination.count).to eq(1)
    end

    it "should set an instance variable @destination" do
      expect(assigns(:destination).name).to eq(@country)
    end
    it "should be redirected to the show page" do
      expect(response).to redirect_to(destination_path(assigns(:destination)))
    end
    end

    context "without valid data" do

    end

  end

end
