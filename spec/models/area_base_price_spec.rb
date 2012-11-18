require 'spec_helper'

describe AreaBasePrice do
  context "validations" do
    [:area_name, :avg_bath, :avg_bed, :avg_lot, :avg_sqft, :avg_year, :price_per_bath, :price_per_bed, :price_per_lot, :price_per_sqft, :price_per_year].each do |attr|
      it "#{attr} may be accessed and changed" do
        expect do
          AreaBasePrice.new(attr => nil)
        end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
      end
    end
  end
end
