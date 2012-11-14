class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :area_of_service
      t.float :longitude
      t.float :latitude
      t.string :company_name
      t.string :email
      t.string :phonenumber
      t.string :fax
      t.string :ptype
      t.integer :company_num

      t.timestamps
    end
  end
end
