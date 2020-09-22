class AddRestaurantIdToTacos < ActiveRecord::Migration[6.0]
  def change
    add_column :tacos, :restaurant_id, :integer
  end
end
