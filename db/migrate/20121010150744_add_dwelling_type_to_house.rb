class AddDwellingTypeToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :dwelling_type, :string
  end
end
