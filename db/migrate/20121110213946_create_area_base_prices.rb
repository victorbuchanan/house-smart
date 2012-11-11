class CreateAreaBasePrices < ActiveRecord::Migration
  def change
    create_table :area_base_prices do |t|
      t.string :area_name
      t.integer :avg_sqft
      t.integer :avg_lot
      t.integer :avg_year
      t.integer :avg_bed
      t.integer :avg_bath
      t.integer :price_per_sqft
      t.integer :price_per_lot
      t.integer :price_per_year
      t.integer :price_per_bed
      t.integer :price_per_bath

      t.timestamps
    end
  end
end
