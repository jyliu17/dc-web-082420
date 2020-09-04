class RenameFavoriteColor < ActiveRecord::Migration[6.0]
  def change
    rename_column :authors, :favorite_color, :favorite_colour
  end
end
