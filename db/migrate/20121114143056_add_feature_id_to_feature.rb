class AddFeatureIdToFeature < ActiveRecord::Migration
  def change
    add_column :features, :feature_id, :integer
  end
end
