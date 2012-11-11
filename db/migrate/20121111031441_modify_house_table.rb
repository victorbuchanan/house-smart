class ModifyHouseTable < ActiveRecord::Migration

  def change
    add_column :houses, :square_footage, :integer
    rename_column :houses, :year_build, :year_built
  end

end
