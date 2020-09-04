class AddFavoriteAnimalToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :favorite_pet, :string
  end
end
