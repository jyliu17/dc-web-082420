class SetUpAuthorTable < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :favorite_color
    end
  end
end
