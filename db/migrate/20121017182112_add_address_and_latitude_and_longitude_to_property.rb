class AddAddressAndLatitudeAndLongitudeToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :address, :string
    add_column :properties, :latitude, :float
    add_column :properties, :longitude, :float
  end
end
