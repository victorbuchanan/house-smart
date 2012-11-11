class ChangeYearBuiltInHouse < ActiveRecord::Migration


  change_column :houses, :year_built, :integer

end
