class AddFieldToToDoItem < ActiveRecord::Migration
  def change
    add_column :to_do_items, :description, :string
  end
end
