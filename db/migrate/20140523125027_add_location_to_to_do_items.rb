class AddLocationToToDoItems < ActiveRecord::Migration
  def change
    add_column :to_do_items, :location, :string
  end
end
