class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :specialty
      t.string  :name
      t.integer :hire_able_id
      t.string :hire_able_type
      t.timestamps
    end
  end
end
