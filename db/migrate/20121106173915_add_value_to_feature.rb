class AddValueToFeature < ActiveRecord::Migration
  def change
    add_column :features, :value, :integer
  end
end
