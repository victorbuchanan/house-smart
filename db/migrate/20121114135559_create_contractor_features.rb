class CreateContractorFeatures < ActiveRecord::Migration
  def change
    create_table :contractor_features do |t|
      t.integer :contractor_id
      t.integer :feature_id

      t.timestamps
    end
  end
end
