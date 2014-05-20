class Destination < ActiveRecord::Base
  validates :name, :presence => true
end
