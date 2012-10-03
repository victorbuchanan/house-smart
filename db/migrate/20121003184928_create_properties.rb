class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.decimal :lot_size, precision: 8, scale: 2
      t.integer :propertible_id
      t.string :propertible_type

      t.timestamps
    end
  end
end
