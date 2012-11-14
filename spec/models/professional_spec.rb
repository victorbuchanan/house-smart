require 'spec_helper'

describe Professional do
  context "validations" do
    [:area_of_service, :company_name, :company_num, :email, :fax, :latitude, :longitude, :phonenumber, :ptype].each do |attr|
      it "#{attr} may be accessed and changed" do
        expect do
          Professional.new(attr => nil)
        end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
      end
    end
  end
end

