require 'spec_helper'

describe Property do
  pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do
    @valid_property_attrs = FactoryGirl.attributes_for :property
  end

  context "associations" do

    it "is a polymorphic object" do
        house = House.create( property_attributes: @valid_property_attrs )
        house.property.should be_kind_of Property
        Property.all.size.should == 1
        Property.first.propertible_type.should == "House"
        Property.first.propertible_id.should == 1    #
    end
  end
end
