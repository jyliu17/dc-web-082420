class CreateTacos < ActiveRecord::Migration[6.0]
  def change
    create_table :tacos do |t|
      t.string :name
      t.float :price
      t.boolean :vegetarian

      t.timestamps
    end
  end
end
