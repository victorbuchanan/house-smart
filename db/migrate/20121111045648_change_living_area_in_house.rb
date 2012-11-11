class ChangeLivingAreaInHouse < ActiveRecord::Migration

  def change
    change_column :houses, :living_area, :string

  end
end
