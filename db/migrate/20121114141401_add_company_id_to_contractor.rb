class AddCompanyIdToContractor < ActiveRecord::Migration
  def change
    add_column :contractors, :contractor_id, :integer
  end
end
