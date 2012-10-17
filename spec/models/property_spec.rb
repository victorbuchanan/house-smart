require 'spec_helper'

describe Property do
  before(:each) do
    @valid_property_attrs = FactoryGirl.attributes_for :property
  end

  context "associations" do

    it "is a polymorphic object" do
        house = FactoryGirl.build(:house)
        house.property.should be_kind_of Property
        house.save
        Property.all.size.should == 1
        Property.first.propertible_type.should == "House"
        Property.first.propertible_id.should == 1    #
    end
  end


  context "validations" do
    [:lot_size].each do |attr|
      it "#{attr} cannot be nil or blank" do
        attr = attr.to_sym
        property = FactoryGirl.build(:property, attr => "")
        property.should_not be_valid
        property.errors.get(attr).should_not be_nil

        valid_value = @valid_property_attrs[attr]
        property.attributes= {attr => valid_value}
        property.should be_valid

      end
    end

    [:lot_size].each do |attr|
      it "#{attr} may be accessed and changed" do
        expect do
          Property.new(attr => nil)
        end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
      end
    end
  end


end

