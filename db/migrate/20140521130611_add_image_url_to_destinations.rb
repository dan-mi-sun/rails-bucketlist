class AddImageUrlToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :image_url, :string
  end
end
