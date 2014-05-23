class ToDoItemsController < ApplicationController

  before_filter :load_all_to_do_items, :only => :create

  before_filter :load_one_destination, :only => :show

  def create
    @to_do_item = ToDoItem.new(allowed_params)
    if @to_do_item.save
      respond_to do |format|
        format.html { redirect_to destination_path(@to_do_item), :notice => "Record Saved" }
        format.js {
          binding.pry
        }
      end
    end
  end

  private
  def allowed_params
    params.require(:to_do_item).permit(:title, :description, :destination_id)
  end

  def load_all_to_do_items
    @to_do_items = ToDoItem.all
  end

  def load_one_to_do_item 
    @to_do_item = ToDoItem.find(params[:id])
  end

end
