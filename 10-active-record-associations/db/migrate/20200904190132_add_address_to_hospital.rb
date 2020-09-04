class AddAddressToHospital < ActiveRecord::Migration[6.0]
  def change
    add_column :hospitals, :address, :string
  end
end
