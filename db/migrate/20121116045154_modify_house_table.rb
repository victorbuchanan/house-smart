class ModifyHouseTable < ActiveRecord::Migration

  def change

    remove_column :houses, :year_build
    add_column :houses, :year_built, :integer
    add_column :houses, :square_footage, :integer
  end
end
