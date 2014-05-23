require 'spec_helper'

describe ToDoItem, :type => :model do
  it { should validate_presence_of(:title) }
  it { should belong_to(:destination) }

  describe "Geocoding" do
    before do 
      @to_do_item = ToDoItem.new(:title => 'Kite Surfing', :location => 'Aberdovey')
      @to_do_item.destination = Destination.create!(:name => "Wales")
      @to_do_item.save!
    end

    it "should provide a useful input to the geocoder" do
      result = @to_do_item.geocode_input
      expect(result).to eq("Aberdovey, Wales")
    end

  end
end
