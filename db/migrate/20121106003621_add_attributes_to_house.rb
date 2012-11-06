class AddAttributesToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :bedrooms, :integer
    add_column :houses, :bathrooms, :integer
    add_column :houses, :living_area, :integer
    add_column :houses, :lot_size, :integer
    add_column :houses, :year_build, :date
  end
end
