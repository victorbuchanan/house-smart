class AddStyleToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :style, :string
  end
end
