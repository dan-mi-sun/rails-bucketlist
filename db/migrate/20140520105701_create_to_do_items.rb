class CreateToDoItems < ActiveRecord::Migration
  def change
    create_table :to_do_items do |t|
      t.string :title
      t.integer :destination_id

      t.timestamps
    end
  end
end
