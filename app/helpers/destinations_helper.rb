module DestinationsHelper

  def make_to_do_item(destination)
    ToDoItem.new(:destination_id => destination.id)
  end

  def to_do_item_id(destination)
    "to-do-items-#{destination.id}"
  end
end
