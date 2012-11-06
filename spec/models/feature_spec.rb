require 'spec_helper'

describe Feature do


  context "validations" do
    [:name, :value].each do |attr|
      it "#{attr} may be accessed and changed" do
        expect do
          Feature.new(attr => nil)
        end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
      end
    end
  end
end
