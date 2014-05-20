class ToDoItem < ActiveRecord::Base
  validates :title, :presence => true

  belongs_to :destination
end
