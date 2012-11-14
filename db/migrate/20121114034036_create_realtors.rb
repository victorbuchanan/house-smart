class CreateRealtors < ActiveRecord::Migration
  def change
    create_table :realtors do |t|
      t.string  :name
      t.integer :hire_able_id
      t.string :hire_able_type
      t.timestamps
    end
  end
end
