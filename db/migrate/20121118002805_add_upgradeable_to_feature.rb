class AddUpgradeableToFeature < ActiveRecord::Migration
  def change
    add_column :features, :upgradeable, :boolean
  end
end
