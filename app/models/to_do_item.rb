class ToDoItem < ActiveRecord::Base

  validates :title, :presence => true
  validates :location, :presence => true

  belongs_to :destination
  
  geocoded_by :geocode_input
  after_validation :geocode 

  def geocode_input
    "#{location}, #{destination.name}"
  end
end
