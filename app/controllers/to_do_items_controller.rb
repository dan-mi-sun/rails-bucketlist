class ToDoItemsController < ApplicationController

  def create
    @to_do_item = ToDoItem.new(allowed_params)
    #Could take the ID from the url
    # @to_do_item.destination_id = params[:destination_id]
    @to_do_item.save!
  end

  private
  def allowed_params
    params.require(:to_do_item).permit(:title, :description, :destination_id)
  end

end
